package co.edu.unbosqueCiclo3Demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

import co.edu.unbosqueCiclo3Demo.*;

@WebServlet("/Controlador")
//@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//*************************Variables Generales*************************
	
	double subtotal=0,totalapagar=0;
	double iva=0,subtotal_iva=0,valor_iva=0;
	long codProducto=0,precio=0,acusubtotal=0;
	long numfactura=0;
	int cantidad=0,item=0;
	
	String descripcion="",cedulaCliente="";
	
	List<DetalleVenta>listaventas = new ArrayList<>();
	Usuarios usuario = new Usuarios();
	DetalleVenta detalle = new DetalleVenta();
	//*********************************************************************
	
	
	//*************************Metodos Locales Controlador*************************
	
	public void buscarCliente(String id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{		
		try {
			ArrayList<Clientes> listac = ClienteJSON.getJSON();
			for(Clientes clientes: listac) {				
				if(clientes.getCedula_cliente().equals(id)) {
					request.setAttribute("clienteSeleccionado", clientes);					
				}
			}
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void buscarProducto(String id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			ArrayList<Productos> listap = TestJSONProductos.getJSON();
			for(Productos productos: listap) {
				if(productos.getCodigo_producto().equals(id)) {
					//request.setAttribute("productoSeleccionado", productos);
				}
			}
				
		} catch (Exception e) {
			 // TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	//*****************************************************************************
	public Controlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String menu = request.getParameter("menu");
		String accion = request.getParameter("accion");
		
		//***************Cedula Usuario Activo***************
		
		String cedula_usuario_activo=request.getParameter("UsuarioActivo");
		usuario.setCedula_usuario(cedula_usuario_activo);
		request.setAttribute("usuarioSeleccionado", usuario);
		
		
		
		//***************************************************

		switch (menu) {
		case "Principal":
			request.getRequestDispatcher("/Principal.jsp").forward(request, response);
			break;
		case "Usuarios":
			if (accion.equals("Listar")) {
				try {
					ArrayList<Usuarios> lista = TestJSON.getJSON();
					request.setAttribute("lista", lista);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Agregar")) {
				Usuarios usuario = new Usuarios();
				usuario.setCedula_usuario(request.getParameter("txtcedula"));
				usuario.setNombre_usuario(request.getParameter("txtnombre"));
				usuario.setEmail_usuario(request.getParameter("txtemail"));
				usuario.setUsuario(request.getParameter("txtusuario"));
				usuario.setPassword(request.getParameter("txtpassword"));

				int respuesta = 0;
				try {
					respuesta = TestJSON.postJSON(usuario);
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request,
								response);
					} else {
						System.out.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

			} else if (accion.equals("Actualizar")) {
				Usuarios usuario = new Usuarios();
				usuario.setCedula_usuario(request.getParameter("txtcedula"));
				usuario.setNombre_usuario(request.getParameter("txtnombre"));
				usuario.setEmail_usuario(request.getParameter("txtemail"));
				usuario.setUsuario(request.getParameter("txtusuario"));
				usuario.setPassword(request.getParameter("txtpassword"));

				int respuesta = 0;
				try {
					respuesta = TestJSON.putJSON(usuario, Long.parseLong(usuario.getCedula_usuario()));
					PrintWriter write = response.getWriter();

					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request,
								response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Cargar")) {
				String id = request.getParameter("id");
				try {
					ArrayList<Usuarios> lista1 = TestJSON.getJSON();
					for (Usuarios usuario : lista1) {
						if (usuario.getCedula_usuario().equals(id)) {
							request.setAttribute("usuarioSeleccionado", usuario);
							request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request,
									response);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Eliminar")) {
				Long id = Long.parseLong(request.getParameter("id"));
				int respuesta = 0;
				try {
					respuesta = TestJSON.deleteJSON(id);
					PrintWriter write = response.getWriter();
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			request.getRequestDispatcher("/Usuarios.jsp").forward(request, response);
			break;
		case "Clientes":
			if (accion.equals("Listar")) {
				try {
					ArrayList<Clientes> lista = ClienteJSON.getJSON();
					request.setAttribute("lista", lista);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Agregar")) {
				Clientes cliente = new Clientes();
				cliente.setCedula_cliente(request.getParameter("txtcedula"));
				cliente.setDireccion_cliente(request.getParameter("txtdireccion"));
				cliente.setEmail_cliente(request.getParameter("txtemail"));
				cliente.setNombre_cliente(request.getParameter("txtnombre"));
				cliente.setTelefono_cliente(request.getParameter("txttelefono"));

				int respuesta = 0;
				try {
					respuesta = ClienteJSON.postJSON(cliente);
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request,
								response);
					} else {
						System.out.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

			} else if (accion.equals("Actualizar")) {
				Clientes cliente = new Clientes();
				cliente.setCedula_cliente(request.getParameter("txtcedula"));
				cliente.setDireccion_cliente(request.getParameter("txtdireccion"));
				cliente.setEmail_cliente(request.getParameter("txtemail"));
				cliente.setNombre_cliente(request.getParameter("txtnombre"));
				cliente.setTelefono_cliente(request.getParameter("txttelefono"));

				int respuesta = 0;
				try {
					respuesta = ClienteJSON.putJSON(cliente, Long.parseLong(cliente.getCedula_cliente()));
					PrintWriter write = response.getWriter();

					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request,
								response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Cargar")) {
				String id = request.getParameter("id");
				try {
					ArrayList<Clientes> lista1 = ClienteJSON.getJSON();
					for (Clientes clientes : lista1) {
						if (clientes.getCedula_cliente().equals(id)) {
							request.setAttribute("clienteSeleccionado", clientes);
							request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request,response);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Eliminar")) {
				Long id = Long.parseLong(request.getParameter("id"));
				int respuesta = 0;
				try {
					respuesta = ClienteJSON.deleteJSON(id);
					PrintWriter write = response.getWriter();
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request,
								response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			request.getRequestDispatcher("/Clientes.jsp").forward(request, response);
			break;

		case "Proveedores":
			if (accion.equals("Listar")) {
				try {
					ArrayList<Proveedores> lista = TestJSONProveedores.getJSON();
					request.setAttribute("lista", lista);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Agregar")) {
				Proveedores proveedor = new Proveedores();
				proveedor.setNit_proveedor(request.getParameter("txtnit"));
				proveedor.setCiudad_proveedor(request.getParameter("txtciudad"));
				proveedor.setNombre_proveedor(request.getParameter("txtnombre"));
				proveedor.setTelefono_proveedor(request.getParameter("txttelefono"));
				proveedor.setDireccion_proveedor(request.getParameter("txtdireccion"));
				System.out.println("Error: antes de entrar" );
				int respuesta = 0;
				try {
					respuesta = TestJSONProveedores.postJSON(proveedor);
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Proveedores&accion=Listar").forward(request,
								response);
						System.out.println("Error: entro");
					} else {
						System.out.println("Error: " + respuesta);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

			} else if (accion.equals("Actualizar")) {
				Proveedores proveedor = new Proveedores();
				proveedor.setNit_proveedor(request.getParameter("txtnit"));
				proveedor.setCiudad_proveedor(request.getParameter("txtciudad"));
				proveedor.setNombre_proveedor(request.getParameter("txtnombre"));
				proveedor.setTelefono_proveedor(request.getParameter("txttelefono"));
				proveedor.setDireccion_proveedor(request.getParameter("txtdireccion"));				
				int respuesta = 0;
				try {
					respuesta = TestJSONProveedores.putJSON(proveedor, Long.parseLong(proveedor.getNit_proveedor()));
					PrintWriter write = response.getWriter();

					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Proveedores&accion=Listar").forward(request,
								response);						
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Cargar")) {
				String id = request.getParameter("id");
				try {
					ArrayList<Proveedores> lista1 = TestJSONProveedores.getJSON();
					for (Proveedores proveedor : lista1) {
						if (proveedor.getNit_proveedor().equals(id)) {
							request.setAttribute("proveedorSeleccionado", proveedor);
							request.getRequestDispatcher("Controlador?menu=Proveedores&accion=Listar").forward(request,
									response);
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (accion.equals("Eliminar")) {
				Long id = Long.parseLong(request.getParameter("id"));
				int respuesta = 0;
				try {
					respuesta = TestJSONProveedores.deleteJSON(id);
					PrintWriter write = response.getWriter();
					if (respuesta == 200) {
						request.getRequestDispatcher("Controlador?menu=Proveedores&accion=Listar").forward(request,
								response);
					} else {
						write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			request.getRequestDispatcher("/Proveedores.jsp").forward(request, response);
			break;
		case "Productos":
		
			request.getRequestDispatcher("/Productos.jsp").forward(request, response);
			break;
		case "Ventas":
			//****************EnviarCedulaUsuario*****************
			
			request.setAttribute("usuarioSeleccionado",usuario);
			
			//****************************************************
			
			if(accion.equals("BuscarCliente")) {
				String id=request.getParameter("cedulaCliente");
				this.buscarCliente(id, request, response);				
			}else if(accion.equals("BuscarProducto")){
				String id=request.getParameter("codigoproducto");
				this.buscarProducto(id, request, response);
				//*********ClienteNoDelete**********
				String idC=request.getParameter("cedulaCliente");
				this.buscarCliente(idC, request, response);
				//**********************************
			}else if(accion.equals("AgregarProducto")) {
				String idc=request.getParameter("cedulacliente");
				this.buscarCliente(idc, request, response);
				//************************************************
				DetalleVenta detalle_venta = new DetalleVenta();
				item++;
				totalapagar=0;
				//
				codProducto=Integer.parseInt(request.getParameter("codigoproducto"));
				descripcion=request.getParameter("nombreproducto");
				precio=Long.parseLong(request.getParameter("precioproducto"));
				cantidad=Integer.parseInt(request.getParameter("cantidadproducto"));
				iva=Double.parseDouble(request.getParameter("ivaproducto"));
				//
				subtotal=(precio*cantidad);
				valor_iva=((subtotal*iva)/100);
				//
				detalle_venta.setCodigo_detalle_venta(item);
				detalle_venta.setCodigo_producto(codProducto);
				detalle_venta.setDescripcion_producto(descripcion);
				detalle_venta.setCantidad_producto(cantidad);
				detalle_venta.setPrecio_producto(precio);
				detalle_venta.setCodigo_venta(numfactura);
				detalle_venta.setValor_iva(iva);
				detalle_venta.setValor_venta(subtotal);				
				listaventas.add(detalle_venta);
				
				for(int i=0; i < listaventas.size(); i++) {
					acusubtotal +=listaventas.get(i).getValor_venta();
					subtotal_iva +=listaventas.get(i).getValor_iva();
				}
				totalapagar=acusubtotal+subtotal_iva;
				detalle_venta.setValor_iva(totalapagar);
				
				request.setAttribute("listaventas", listaventas);
				request.setAttribute("subtotal", acusubtotal);
				request.setAttribute("subtotaliva", subtotal_iva);
				request.setAttribute("total", totalapagar);
			}
			
			
			request.getRequestDispatcher("/Ventas.jsp").forward(request, response);
			break;
		}

	}
}
package co.edu.unbosqueCiclo3Demo;

public class Productos {
	
	private String codigo_producto;
	private String ivacompra; //Igual a BD
	private String nit_proveedor;
	private String nombre_producto;
	private String precio_compra; //Precio Producto
	private String precio_venta;
	
	public String getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(String codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	public String getIvacompra() {
		return ivacompra;
	}
	public void setIvacompra(String ivacompra) {
		this.ivacompra = ivacompra;
	}
	public String getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(String nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	public String getNombre_producto() {
		return nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	public String getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(String precio_compra) {
		this.precio_compra = precio_compra;
	}
	public String getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(String precio_venta) {
		this.precio_venta = precio_venta;
	}
	
		
}

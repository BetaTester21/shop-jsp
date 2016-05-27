package Modelo;

public class Producto {
    private  int codigoProducto;
    private String nombre;
    private double precio;
    private String categoria;
    private String imagen;

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Producto(){
        
    }

    public Producto(int codigoProducto, String nombre, double precio,String categoria, String imagen) {
        this.codigoProducto = codigoProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.categoria = categoria;
        this.imagen = imagen;
    }
    
    
    public Producto(int codigoProducto, String nombre, double precio,String categoria) {
        this.codigoProducto = codigoProducto;
        this.nombre = nombre;
        this.precio = precio;
        this.categoria = categoria;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    public String getCategoria() {
        return nombre;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return nombre;
    }
 
}

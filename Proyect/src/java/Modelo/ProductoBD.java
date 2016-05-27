package Modelo;
import java.sql.*;
import java.util.*;
import utils.Conexion;

public class ProductoBD {
    
    public static ArrayList<Producto> obtenerProducto() {
        ArrayList<Producto> lista = new ArrayList<Producto>();
        Connection cn = null;
        CallableStatement cl = null;
        ResultSet rs = null;
        try {
            cl=Conexion.getConexion().prepareCall("{CALL spF_producto_all()}");
            rs = cl.executeQuery();
            while (rs.next()) {
                Producto p = new Producto(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getString(4),rs.getString(5));
                lista.add(p);
            }
        } catch (Exception e) {  }
        return lista;
    }
    public static boolean insertarProducto(Producto varproducto) {
        Connection cn = null;
        CallableStatement cl = null;
        boolean rpta = false;
        try {
            cl=Conexion.getConexion().prepareCall("{CALL spI_producto(?,?,?,?,?)}");
            cl.registerOutParameter(1, Types.INTEGER);
            cl.setString(2, varproducto.getNombre());
            cl.setDouble(3, varproducto.getPrecio());
            cl.setString(4, varproducto.getCategoria());
            cl.setString(5, varproducto.getImagen());
            int i=cl.executeUpdate();
            if(i==1){
                rpta=true;
            }else{
                rpta=false;
            }
        } catch (Exception e) { }
        return rpta;
    }
    
   public static Producto obtenerProducto(int codigo) {
        Producto p = new Producto();
        Connection cn = null;
        CallableStatement cl = null;
        ResultSet rs = null;
        try {
            cn = Conexion.getConexion();
            cl = cn.prepareCall("{CALL spF_producto_one(?)}");
            cl.setInt(1, codigo);
            rs = cl.executeQuery();
            while (rs.next()) {
                p.setCodigoProducto(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setPrecio(rs.getDouble(3));
                p.setCategoria(rs.getString(4));
                p.setImagen(rs.getString(5));
            }

        }catch (Exception e) {}
        return p;
    }
    public static boolean actualizarProducto(Producto varproducto) {
        Connection cn = null;
        CallableStatement cl = null;
        boolean rpta = false;
        try {
            cn = Conexion.getConexion();
            cl = cn.prepareCall( "{CALL spU_producto(?,?,?)}");
            cl.setInt(1, varproducto.getCodigoProducto());
            cl.setString(2, varproducto.getNombre());
            cl.setDouble(3, varproducto.getPrecio());
            int i=cl.executeUpdate();
            
            if(i==1){
            rpta = true;
            }else{
            rpta = false;
            }
        } catch (Exception e) {}
        return rpta;
    }
  
}


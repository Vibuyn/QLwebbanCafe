using Microsoft.AspNetCore.Mvc;
using CoffeeShopManagement.Models;

namespace CoffeeShopManagement.Controllers
{
    public class AccessController : Controller
    {
        CoffeeShopManagementContext db = new CoffeeShopManagementContext();
        [HttpGet]
        public IActionResult Login()
        {
            if(HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index","Home"); 
            }
        }
        [HttpPost]
        public IActionResult Login(NguoiDung  user)
        {
            if(HttpContext.Session.GetString("UserName")==null)
            {
                var u = db.NguoiDungs.Where(x => x.IdNguoiDung.Equals(user.IdNguoiDung) && x.MatKhau.Equals
                (user.MatKhau)).FirstOrDefault();
                if(u!=null)
                {
                    HttpContext.Session.SetString("UserName", u.IdNguoiDung.ToString());
                    return RedirectToAction("Index", "Home");
                }

            }
            return View();
        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login","Access");
        }
    }
}

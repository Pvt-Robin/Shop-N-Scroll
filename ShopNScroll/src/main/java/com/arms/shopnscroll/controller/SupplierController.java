package com.arms.shopnscroll.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arms.shopnscroll.model.Supplier;
import com.arms.shopnscroll.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	SupplierService supplierService;

	@RequestMapping("/supplier")
	public String getSupplier(Model model) {
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierListJSON", supplierService.fetchAllSupplierJSON());
		
		model.addAttribute("btnLabel", "Add");

		return "admin-supplier";
	}

	@RequestMapping("/updatesupplier-{supplierId}")
	public String updateSupplier(@PathVariable("supplierId") int supplierId, Model model) {
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("supplier", supplierService.fetchOneCategory(supplierId));
		model.addAttribute("supplierListJSON", supplierService.fetchAllSupplierJSON());
		
		model.addAttribute("btnLabel", "Update");

		return "admin-supplier";
	}

	@RequestMapping("/addsupplier")
	public String addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier,BindingResult result,Model model,RedirectAttributes redirectAttributes) 
	{
		if(result.hasErrors())
		{
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("supplierListJSON", supplierService.fetchAllSupplierJSON());

			model.addAttribute("btnLabel", "Update");

			return "admin-supplier";
		}
		
		supplierService.addSupplier(supplier);
		return "redirect:/supplier";
	}

	@RequestMapping("/removesupplier-{supplierId}")
	public String removeSupplier(@PathVariable("supplierId") int supplierId,RedirectAttributes redirectAttributes) {
		supplierService.removeSupplier(supplierId);
		return "redirect:/supplier";
	}

	@RequestMapping("/supplieractivatetoggle-{supplierId}")
	public String activeToggleSupplier(@PathVariable("supplierId") int supplierId,RedirectAttributes redirectAttributes) 
	{
		supplierService.toggleSupplier(supplierId);
		return "redirect:/supplier";
	}
}

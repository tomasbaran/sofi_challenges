String returnFakeResponse() {
  return '''
   {
    "title": "How do you want to get started?",
    "mjsTag": "MMBR:product_selection:VIEW",
    "callToAction": {
        "title": "Skip",
        "mjsTag": "MMBR:product_selection:maybe_later:TAP"
    },
    "mainSelections": [
        {
            "icon": "FRE_Invest",
            "title": "Get up to \$1K. Plus—New! Invest in IPOs.",
            "nativePath": "claw-for-all/campaign_onboarding/inv-claw-for-all",
            "mjsTag": "MMBR:product_selection:select_product:TAP",
            "attribute": {
                "key": "product",
                "value": "invest"
            },
            "childSelections": null
        },
        {
            "icon": "FRE_Money",
            "title": "Pay no account fees and earn up to 4.60% on your balances",
            "nativePath": "money/onboarding",
            "mjsTag": "MMBR:product_selection:select_product:TAP",
            "attribute": {
                "key": "product",
                "value": "money"
            },
            "childSelections": null
        },
        {
            "icon": "FRE_CC",
            "title": "Get the credit card with up to 2% cash back",
            "nativePath": "card/apply",
            "mjsTag": "MMBR:product_selection:select_product:TAP",
            "attribute": {
                "key": "product",
                "value": "creditCard"
            },
            "childSelections": null
        },
        {
            "icon": "FRE_CSM",
            "title": "Track your credit score and earn up to \$10 in cash rewards",
            "nativePath": "advice/relay/app/tmt/credit-score/monitoring-onboarding?gcp=622b9713-2ef7-4021-a68a-871a9a38b163",
            "mjsTag": "MMBR:product_selection:select_product:TAP",
            "attribute": {
                "key": "product",
                "value": "credit_score_monitoring"
            },
            "childSelections": null
        },
        {
            "icon": "FRE_Loans",
            "title": "Find a rate on a loan that's right for you",
            "nativePath": null,
            "mjsTag": "MMBR:product_selection:select_product:TAP",
            "attribute": {
                "key": "product",
                "value": "loans"
            },
            "childSelections": {
                "title": "What kind of loan are you looking for?",
                "selections": [
                    {
                        "icon": "FRE_SL_Grad",
                        "title": "Low-rate student loans",
                        "nativePath": null,
                        "mjsTag": "MMBR:product_selection:select_product:TAP",
                        "attribute": {
                            "key": "product",
                            "value": "studentLoan"
                        },
                        "childSelections": {
                            "title": "How are you looking to save on student loans?",
                            "selections": [
                                {
                                    "icon": "FRE_In_School",
                                    "title": "Take out a new school loan",
                                    "nativePath": "inschoolLoanApplyNow",
                                    "mjsTag": "MMBR:product_selection:select_product:TAP",
                                    "attribute": {
                                        "key": "product",
                                        "value": "inschoolLoan"
                                    },
                                    "childSelections": null
                                },
                                {
                                    "icon": "FRE_SLR",
                                    "title": "Refinance existing student loan",
                                    "nativePath": "studentLoanApplyNow",
                                    "mjsTag": "MMBR:product_selection:select_product:TAP",
                                    "attribute": {
                                        "key": "product",
                                        "value": "studentLoanRefi"
                                    },
                                    "childSelections": null
                                }
                            ]
                        }
                    },
                    {
                        "icon": "FRE_PL",
                        "title": "Personal loans up to \$100k",
                        "nativePath": "personalLoanApplyNow",
                        "mjsTag": "MMBR:product_selection:select_product:TAP",
                        "attribute": {
                            "key": "product",
                            "value": "PL"
                        },
                        "childSelections": null
                    },
                    {
                        "icon": "FRE_Home_Loan",
                        "title": "Home loans and refinancing",
                        "nativePath": "homeLoanApplyNow",
                        "mjsTag": "MMBR:product_selection:select_product:TAP",
                        "attribute": {
                            "key": "product",
                            "value": "homeLoan"
                        },
                        "childSelections": null
                    }
                ]
            }
        }
    ],
    "experiments": [
        {
            "experimentKey": "fre_product_select_experiment",
            "variant": "control"
        }
    ]
}
    ''';
}


QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Ceylon Police Department',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
                name = 'Cadet',
                payment = 1300
            },
			['1'] = {
                name = 'Officer III',
                payment = 1400
            },
			['2'] = {
                name = 'Officer II',
                payment = 1500
            },
			['3'] = {
                name = 'Officer I',
                payment = 1600
            },
			['4'] = {
                name = 'Senior Officer III',
                payment = 1700
            },
            ['5'] = {
                name = 'Senior Officer II',
                payment = 1800
            },
            ['6'] = {
                name = 'Senior Officer I',
                payment = 1900
            },
            ['7'] = {
                name = 'Corporal',
				isboss = true,
                payment = 2000
            },
            ['8'] = {
                name = 'Lieutenant',
				isboss = true,
                payment = 2100
            },
            ['9'] = {
                name = 'Commander',
				isboss = true,
                payment = 2400
            },
            ['9'] = {
                name = 'Chief',
				isboss = true,
                payment = 2500
            },
			['10'] = {
                name = 'Deputy Sheriff Trainee',
                payment = 1300
            },
			['11'] = {
                name = 'Deputy Sheriff III',
                payment = 1400
            },
			['12'] = {
                name = 'Deputy Sheriff II',
                payment = 1500
            },
			['13'] = {
                name = 'Deputy Sheriff I',
                payment = 1600
            },
			['14'] = {
                name = 'Senior Deputy III',
                payment = 1700
            },
			['15'] = {
                name = 'Senior Deputy II',
                payment = 1800
            },
			['16'] = {
                name = 'Senior Deputy I',
				isboss = true,
                payment = 1900
            },
			['17'] = {
                name = 'Sergeant',
				isboss = true,
                payment = 1950
            },
			['18'] = {
                name = 'Captain',
				isboss = true,
                payment = 2000
            },
			['19'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 2200
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 1800
            },
			['1'] = {
                name = 'Paramedic',
                payment = 1900
            },
			['2'] = {
                name = 'FTO',
                payment = 2000
            },
			['3'] = {
                name = 'Advanced Paramedic',
                payment = 2100
            },
			['4'] = {
                name = 'Chief of Paramedic',
				isboss = true,
                payment = 2400
            },
            ['5'] = {
                name = 'Training Nurse',
                payment = 1600
            },
            ['6'] = {
                name = 'Nurse',
                payment = 1800
            },
            ['7'] = {
                name = 'Assistant Doctor',
                payment = 1900
            },
            ['8'] = {
                name = 'Doctor',
                payment = 2000
            },
            ['9'] = {
                name = 'Senior Doctor',
                payment = 2100
            },
            ['10'] = {
                name = 'Deputy Doctor',
                payment = 2200
            },
			['11'] = {
                name = 'Head Doctor',
				isboss = true,
                payment = 2300
            },
			['12'] = {
                name = 'Director',
				isboss = true,
                payment = 2600
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
        label = 'Taxi',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 1500
            },
            ['1'] = {
                name = 'Junior Driver',
                payment = 1700
            },
            ['2'] = {
                name = 'Driver',
                payment = 1800
            },
            ['3'] = {
                name = 'Senior Driver',
                payment = 1900
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 2000
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 220
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 120
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 130
            },
			['2'] = {
                name = 'Business Sales',
                payment = 140
            },
			['3'] = {
                name = 'Finance',
                payment = 150
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 250
            },
        },
	},
	['mechanic'] = {
		label = 'Pamcare Auto Service',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 260
            },
			['1'] = {
                name = 'Novice',
                payment = 280
            },
			['2'] = {
                name = 'Experienced',
                payment = 310
            },
			['3'] = {
                name = 'Advanced',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 380
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 300
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 250
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
    ["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 440
            },
			['1'] = {
                name = "Employee",
                payment = 500
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 600
            },
			['3'] = {
                name = "Manager",
                payment = 650
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 700
            },
        },
	},
    ["farmer"] = {
		label = "farmer",
		defaultDuty = true,
		grades = {
				['0'] = {
					name = "Employee",
					payment = 0
				},
			},
			defaultDuty = true,
		},
		["courier"] = {
		label = "courier",
		defaultDuty = true,
		grades = {
				['0'] = {
					name = "Employee",
					payment = 0
				},
			},
			defaultDuty = true,
		},
		["vanilla"] = {
			label = "vanilla",
			defaultDuty = true,
			grades = {
					['0'] = {
						name = "Vanilla Unicorn",
						payment = 0
					},
					['1'] = {
						ame = "Owner",
						isboss = true,
						payment = 150
					},
				},
				defaultDuty = true,
		},
		['vunicorn'] = {
			label = ' Vanilla Unicorn Strip Club',
			defaultDuty = true,
			offDutyPay = false,
			grades = {
				['0'] = {
					name = 'Employee',
					payment = 0
				},
				['1'] = {
					name = 'Vip Driver',
					payment = 0
				},
				['2'] = {
					name = 'Dancers',
					payment = 0
				},
				['3'] = {
					name = 'Security',
					payment = 0
				},
				['4'] = {
					name = 'Bartenders',
					payment = 0
				},
				['5'] = {
					name = 'Sound Operator (Dj)',
					payment = 0
				},
				['6'] = {
					name = 'Head Of Security',
					payment = 0
				},
				['7'] = {
					name = 'Bar Manager',
					payment = 0
				},
				['8'] = {
					name = 'Financial Operations Manager',
					payment = 0
				},
				['9'] = {
					name = 'Operations Manager',
					isboss = true,
					payment = 0
				},
				['10'] = {
					name = 'General Manager',
					isboss = true,
					payment = 0
				},
				['11'] = {
					name = 'Owner',
					isboss = true,
					payment = 0
				},
			},
		},
			["tequilala"] = {
				label = "Tequi-la-la",
				defaultDuty = true,
				offDutyPay = false,
				grades = {
					['0'] = {
						name = "Security",
						payment = 220
					},
					['1'] = {
						name = "Bartender",
						payment = 220
					},
					['2'] = {
						name = "DJ",
						payment = 230
					},
					['3'] = {
						name = "Stripper",
						payment = 230
					},
					['4'] = {
						name = "Manager",
						payment = 250
					},
					['5'] = {
						name = "Owner",
						isboss = true,
						payment = 270
					},
				},
			},			
		["fruitpicker"] = {
		label = "fruitpicker",
		defaultDuty = true,
		grades = {
				['0'] = {
					name = "Employee",
					payment = 120
				},
			},
			defaultDuty = true,
		},
		["builder"] = {
		label = "builder",
		defaultDuty = true,
		grades = {
				['0'] = {
					name = "Employee",
					payment = 100
				},
			},
			defaultDuty = true,
		},
		["tastyeats"] = {
		label = "tastyeats",
		defaultDuty = true,
		grades = {
				['0'] = {
					name = "Employee",
					payment = 100
				},
			},
			defaultDuty = true,
		},
		["warehouse"] = {
			label = "Warehouse",
			defaultDuty = true,
			grades = {
					['0'] = {
						name = "Employee",
						payment = 100
					},
				},
				defaultDuty = true,
		},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 215
            },
			['1'] = {
                name = 'Journalist',
                payment = 230
            },
			['2'] = {
                name = 'Journalist',
                payment = 250
            },
			['3'] = {
                name = 'Journalist',
                payment = 275
            },
			['4'] = {
                name = 'Journalist Leader',
				isboss = true,
                payment = 300
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 120
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 120
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 120
            },
        },
	},
	['recycling'] = {
		label = 'Recycling',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Temporary',
				payment = 100
			},
			['1'] = {
				name = 'Long Term',
				payment = 200
			},
			['2'] = {
				name = 'Management',
				isboss = true,
				payment = 250
			},
		},
	},
	['rooster'] = {
		label = 'Rooster',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Rooster',
                payment = 100
            },
        },
	},
	['lumberjack'] = {
		label = 'LumberJack',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Logger',
                payment = 50
            },
        },
	},
	["whitewidow"] = {
		label = "White Widow",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Worker',
				payment = 400,
			},
			['1'] = {
				name = 'Vice Boss',
				payment = 500,
			},
			['3'] = {
				name = 'Manager',
				payment = 700,
			},
			['4'] = {
				name = 'Boss',
				isboss = true,
				payment = 1000,
			},
		},
	},
	["italiancaffe"] = {
		label = "Italian Caffe Corretto Employee",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 440
            },
			['1'] = {
                name = "Employee",
                payment = 500
            },
			['2'] = {
                name = "Manager",
                payment = 650
            },
			['3'] = {
                name = "CEO",
				isboss = true,
                payment = 700
            },
        },
	},
	['casino'] = {
        label = 'Casino',
        defaultDuty = true,
        grades = {
            ['0'] = { name = 'Novice', payment = 50 },
            ['1'] = { name = 'Experienced', payment = 100 },
            ['2'] = { name = 'Boss', isboss = true, payment = 200 },
        },
    },
}

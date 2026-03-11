<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>dataflow_in_loop_VITIS_LOOP_310_1_133</name>
		<module_structure>Dataflow</module_structure>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>twiddle_out1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>fft2_out1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4142969264</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>20</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>fft_config</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>305</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>305</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fft_config</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144177712</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>21</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>fft_status</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>304</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>304</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fft_status</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144751584</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>22</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>_ln314</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>314</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>314</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>42</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>24</item>
					<item>25</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>_ln314</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>314</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>314</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>27</item>
					<item>28</item>
					<item>29</item>
					<item>152</item>
					<item>153</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>_ln315</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>315</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>315</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144612704</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
					<item>33</item>
					<item>34</item>
					<item>35</item>
					<item>151</item>
					<item>154</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>_ln316</name>
						<fileName>fft_16k_ssr2_i14_c16_t18.cpp</fileName>
						<fileDirectory>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</fileDirectory>
						<lineNumber>316</lineNumber>
						<contextFuncName>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</contextFuncName>
						<contextNormFuncName>p_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for_inc</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/phongtran/Downloads/ssr-fft-main/fft_16k_ssr2_i14_c16_t18</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_16k_ssr2_i14_c16_t18.cpp</first>
											<second>_ZN24fft_16k_ssr2_i14_c16_t1817fft_serial_kernelERN3hls6streamISt7complexI8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEELi0EEES9_i_for.inc</second>
										</first>
										<second>316</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4142660768</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>37</item>
					<item>38</item>
					<item>150</item>
					<item>155</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>19</id>
						<name>empty_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144412256</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>23</id>
						<name>Block_newFuncRoot_proc_proc17</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144412256</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_newFuncRoot_proc_proc17&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_13">
				<Value>
					<Obj>
						<type>2</type>
						<id>26</id>
						<name>Block_newFuncRoot_proc_proc18</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4143829472</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_newFuncRoot_proc_proc18&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_14">
				<Value>
					<Obj>
						<type>2</type>
						<id>30</id>
						<name>fft_fft_params_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>3034717766</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft&lt;fft_params&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_15">
				<Value>
					<Obj>
						<type>2</type>
						<id>36</id>
						<name>Block_newFuncRoot_proc_proc19</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4144853536</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_newFuncRoot_proc_proc19&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_16">
				<Obj>
					<type>3</type>
					<id>18</id>
					<name>dataflow_in_loop_VITIS_LOOP_310_1.133</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>828339302</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>8</count>
					<item_version>0</item_version>
					<item>6</item>
					<item>7</item>
					<item>10</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>17</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>21</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_17">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>7</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>33</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>34</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>150</id>
				<edge_type>4</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>151</id>
				<edge_type>4</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>152</id>
				<edge_type>4</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>153</id>
				<edge_type>4</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>154</id>
				<edge_type>4</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>155</id>
				<edge_type>4</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_38">
			<mId>1</mId>
			<mTag>dataflow_in_loop_VITIS_LOOP_310_1.133</mTag>
			<mNormTag>dataflow_in_loop_VITIS_LOOP_310_1_133</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>24729</mMinLatency>
			<mMaxLatency>24729</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_39">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_40">
						<name>twiddle_out1</name>
						<dir>0</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_41">
						<name>fft2_out1</name>
						<dir>1</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>4</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_42">
						<type>0</type>
						<name>Block_newFuncRoot_proc_proc17_U0</name>
						<ssdmobj_id>13</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_43">
						<type>0</type>
						<name>Block_newFuncRoot_proc_proc18_U0</name>
						<ssdmobj_id>14</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_44">
						<type>0</type>
						<name>fft_fft_params_U0</name>
						<ssdmobj_id>15</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_45">
								<port class_id_reference="25" object_id="_46">
									<name>twiddle_out1</name>
									<dir>0</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_40"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_47">
									<type>0</type>
									<name>fft_fft_params_U0</name>
									<ssdmobj_id>15</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_48">
								<port class_id_reference="25" object_id="_49">
									<name>fft2_out1</name>
									<dir>1</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_41"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_47"></inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_50">
						<type>0</type>
						<name>Block_newFuncRoot_proc_proc19_U0</name>
						<ssdmobj_id>16</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_51">
						<type>1</type>
						<name>empty</name>
						<ssdmobj_id>6</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>16</bitwidth>
						<suggested_type>1</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_52">
								<port class_id_reference="25" object_id="_53">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_54">
									<type>0</type>
									<name>Block_newFuncRoot_proc_proc17_U0</name>
									<ssdmobj_id>13</ssdmobj_id>
								</inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_55">
								<port class_id_reference="25" object_id="_56">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_57">
									<type>0</type>
									<name>Block_newFuncRoot_proc_proc18_U0</name>
									<ssdmobj_id>14</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
						<bram_cost>0</bram_cost>
						<uram_cost>0</uram_cost>
						<storage_size>16 2 1</storage_size>
					</item>
					<item class_id_reference="26" object_id="_58">
						<type>1</type>
						<name>fft_config</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>16</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_59">
								<port class_id_reference="25" object_id="_60">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_57"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_61">
								<port class_id_reference="25" object_id="_62">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_47"></inst>
							</item>
						</sink_list>
						<bram_cost>0</bram_cost>
						<uram_cost>0</uram_cost>
						<storage_size>16 2 1</storage_size>
					</item>
					<item class_id_reference="26" object_id="_63">
						<type>1</type>
						<name>fft_status</name>
						<ssdmobj_id>10</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_64">
								<port class_id_reference="25" object_id="_65">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_47"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_66">
								<port class_id_reference="25" object_id="_67">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_68">
									<type>0</type>
									<name>Block_newFuncRoot_proc_proc19_U0</name>
									<ssdmobj_id>16</ssdmobj_id>
								</inst>
							</item>
						</sink_list>
						<bram_cost>0</bram_cost>
						<uram_cost>0</uram_cost>
						<storage_size>8 2 1</storage_size>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>6</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>4</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>4</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>18</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>4</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_69">
			<region_name>dataflow_in_loop_VITIS_LOOP_310_1.133</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</basic_blocks>
			<nodes>
				<count>15</count>
				<item_version>0</item_version>
				<item>3</item>
				<item>4</item>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
			<mDBIIViolationVec class_id="44" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>


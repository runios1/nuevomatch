./bin/algorithms.o: src/algorithms.cpp include/algorithms.h \
 include/basic_types.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/algorithms.cpp -o ./bin/algorithms.o

./bin/argument_handler.o: src/argument_handler.cpp include/argument_handler.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/argument_handler.cpp -o ./bin/argument_handler.o

./bin/bench_echo.o: tools/bench_echo.cpp include/logging.h \
 include/argument_handler.h include/basic_types.h \
 include/pipeline_thread.h include/cpu_core_tools.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/bench_echo.cpp -o ./bin/bench_echo.o

./bin/bench_lookup.o: tools/bench_lookup.cpp include/logging.h \
 include/argument_handler.h include/object_io.h include/basic_types.h \
 include/matrix_operations.h include/algorithms.h include/lookup.h \
 include/rqrmi_model.h include/vector_list.h include/pipeline_thread.h \
 include/cpu_core_tools.h include/rqrmi_fast.h include/simd_aux.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/bench_lookup.cpp -o ./bin/bench_lookup.o

./bin/bench_reducer.o: tools/bench_reducer.cpp include/basic_types.h \
 include/pipeline_thread.h include/cpu_core_tools.h include/logging.h \
 include/argument_handler.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/bench_reducer.cpp -o ./bin/bench_reducer.o

./bin/bench_rqrmi.o: tools/bench_rqrmi.cpp include/algorithms.h \
 include/basic_types.h include/logging.h include/object_io.h \
 include/matrix_operations.h include/rqrmi_model.h include/vector_list.h \
 include/rqrmi_fast.h include/simd_aux.h include/argument_handler.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/bench_rqrmi.cpp -o ./bin/bench_rqrmi.o

./bin/cpu_core_tools.o: src/cpu_core_tools.cpp include/cpu_core_tools.h \
 include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/cpu_core_tools.cpp -o ./bin/cpu_core_tools.o

./bin/cut_split.o: vendor/cut_split.cpp include/logging.h include/object_io.h \
 include/basic_types.h
	$(CXX) -O2 -std=c++14 -fpermissive $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c vendor/cut_split.cpp -o ./bin/cut_split.o

./bin/efficuts.o: vendor/efficuts.cpp include/logging.h
	$(CXX) -O2 -std=c++14 -fpermissive $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c vendor/efficuts.cpp -o ./bin/efficuts.o

./bin/em_table.o: src/em_table.cpp include/logging.h include/em_table.h \
 include/rule_db.h include/object_io.h include/basic_types.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/em_table.cpp -o ./bin/em_table.o

./bin/hyper_split.o: vendor/hyper_split.cpp include/object_io.h \
 include/basic_types.h
	$(CXX) -O2 -std=c++14 -fpermissive $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c vendor/hyper_split.cpp -o ./bin/hyper_split.o

./bin/interval_set.o: src/interval_set.cpp include/algorithms.h \
 include/basic_types.h include/rqrmi_model.h include/matrix_operations.h \
 include/vector_list.h include/rqrmi_fast.h include/simd_aux.h \
 include/interval_set.h include/object_io.h include/pipeline_thread.h \
 include/cpu_core_tools.h include/logging.h include/nuevomatch_base.h \
 include/generic_classifier.h include/rule_db.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/interval_set.cpp -o ./bin/interval_set.o

./bin/logging.o: src/logging.cpp include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/logging.cpp -o ./bin/logging.o

./bin/lookup.o: src/lookup.cpp include/object_io.h include/basic_types.h \
 include/matrix_operations.h include/lookup.h include/rqrmi_model.h \
 include/vector_list.h include/pipeline_thread.h include/cpu_core_tools.h \
 include/logging.h include/rqrmi_fast.h include/simd_aux.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/lookup.cpp -o ./bin/lookup.o

./bin/matrix_operations.o: src/matrix_operations.cpp \
 include/matrix_operations.h include/basic_types.h include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/matrix_operations.cpp -o ./bin/matrix_operations.o

./bin/neurocuts.o: vendor/neurocuts.cpp include/object_io.h \
 include/basic_types.h include/logging.h
	$(CXX) -O2 -std=c++14 -fpermissive $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c vendor/neurocuts.cpp -o ./bin/neurocuts.o

./bin/nuevomatch.o: src/nuevomatch.cpp include/object_io.h \
 include/basic_types.h include/cpu_core_tools.h \
 include/array_operations.h include/string_operations.h \
 include/nuevomatch.h include/pipeline_thread.h include/logging.h \
 include/nuevomatch_base.h include/generic_classifier.h include/rule_db.h \
 include/nuevomatch_config.h include/nuevomatch_workers.h \
 include/interval_set.h include/matrix_operations.h include/rqrmi_model.h \
 include/vector_list.h include/rqrmi_fast.h include/simd_aux.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/nuevomatch.cpp -o ./bin/nuevomatch.o

./bin/object_io.o: src/object_io.cpp include/object_io.h include/basic_types.h \
 include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/object_io.cpp -o ./bin/object_io.o

./bin/python_library.o: src/python_library.cpp include/logging.h \
 include/basic_types.h include/object_io.h include/rqrmi_model.h \
 include/matrix_operations.h include/vector_list.h include/rqrmi_tools.h \
 include/lookup.h include/pipeline_thread.h include/cpu_core_tools.h \
 include/rqrmi_fast.h include/simd_aux.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/python_library.cpp -o ./bin/python_library.o

./bin/rqrmi_fast.o: src/rqrmi_fast.cpp include/rqrmi_fast.h \
 include/basic_types.h include/rqrmi_model.h include/matrix_operations.h \
 include/vector_list.h include/simd_aux.h include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/rqrmi_fast.cpp -o ./bin/rqrmi_fast.o

./bin/rqrmi_model.o: src/rqrmi_model.cpp include/rqrmi_model.h \
 include/matrix_operations.h include/basic_types.h include/vector_list.h \
 include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/rqrmi_model.cpp -o ./bin/rqrmi_model.o

./bin/rqrmi_tools.o: src/rqrmi_tools.cpp include/basic_types.h \
 include/matrix_operations.h include/rqrmi_tools.h include/vector_list.h \
 include/rqrmi_model.h include/algorithms.h include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/rqrmi_tools.cpp -o ./bin/rqrmi_tools.o

./bin/rule_db.o: src/rule_db.cpp include/object_io.h include/basic_types.h \
 include/rule_db.h include/logging.h include/array_operations.h \
 include/string_operations.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/rule_db.cpp -o ./bin/rule_db.o

./bin/simd_aux.o: src/simd_aux.cpp include/simd_aux.h include/basic_types.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/simd_aux.cpp -o ./bin/simd_aux.o

./bin/string_operations.o: src/string_operations.cpp \
 include/string_operations.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/string_operations.cpp -o ./bin/string_operations.o

./bin/tool_classifier.o: tools/tool_classifier.cpp include/logging.h \
 include/argument_handler.h include/object_io.h include/basic_types.h \
 include/nuevomatch.h include/pipeline_thread.h include/cpu_core_tools.h \
 include/nuevomatch_base.h include/generic_classifier.h include/rule_db.h \
 include/nuevomatch_config.h include/nuevomatch_workers.h \
 include/interval_set.h include/matrix_operations.h include/rqrmi_model.h \
 include/vector_list.h include/rqrmi_fast.h include/simd_aux.h \
 include/parallel_classifier.h include/string_operations.h \
 include/em_table.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/tool_classifier.cpp -o ./bin/tool_classifier.o

./bin/tool_locality.o: tools/tool_locality.cpp include/argument_handler.h \
 include/logging.h include/zipf.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/tool_locality.cpp -o ./bin/tool_locality.o

./bin/tool_trace_generator.o: tools/tool_trace_generator.cpp \
 include/argument_handler.h include/logging.h \
 include/generic_classifier.h include/object_io.h include/basic_types.h \
 include/rule_db.h include/nuevomatch.h include/pipeline_thread.h \
 include/cpu_core_tools.h include/nuevomatch_base.h \
 include/nuevomatch_config.h include/nuevomatch_workers.h \
 include/interval_set.h include/matrix_operations.h include/rqrmi_model.h \
 include/vector_list.h include/rqrmi_fast.h include/simd_aux.h \
 include/algorithms.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c tools/tool_trace_generator.cpp -o ./bin/tool_trace_generator.o

./bin/tuple_merge.o: vendor/tuple_merge.cpp
	$(CXX) -O2 -std=c++14 -fpermissive $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c vendor/tuple_merge.cpp -o ./bin/tuple_merge.o

./bin/vector_list.o: src/vector_list.cpp include/vector_list.h \
 include/basic_types.h include/matrix_operations.h include/logging.h
	$(CXX) $(CXXFLAGS) $(SIMDFLAGS) $(DBGFLAGS) $(INCLUDES) $(LIBRARIES) -c src/vector_list.cpp -o ./bin/vector_list.o


# linuxftrace

## ftrace

Tracer 활성화/비활성화

```sh
echo 0 > /sys/kernel/debug/tracing/tracing_on
sleep 1
echo "tracing_off"
```

Tracer설정 

```sh
echo function > /sys/kernel/debug/tracing/current_tracer
sleep 1
echo "function tracer enabled"
```




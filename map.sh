#!/bin/bash
 
 
case $OMPI_COMM_WORLD_LOCAL_RANK in
      0) core=0-47;    export UCX_NET_DEVICES=mlx5_ib0:1 ;;
      1) core=0-47;    export UCX_NET_DEVICES=mlx5_ib1:1 ;;
      2) core=0-47;    export UCX_NET_DEVICES=mlx5_ib2:1 ;;
      3) core=0-47;    export UCX_NET_DEVICES=mlx5_ib3:1 ;;

      4) core=48-95;    export UCX_NET_DEVICES=mlx5_ib4:1 ;;
      5) core=48-95;    export UCX_NET_DEVICES=mlx5_ib5:1 ;;
      6) core=48-95;    export UCX_NET_DEVICES=mlx5_ib6:1 ;;
      7) core=48-95;    export UCX_NET_DEVICES=mlx5_ib7:1 ;;

esac
 
      taskset -c $core $*

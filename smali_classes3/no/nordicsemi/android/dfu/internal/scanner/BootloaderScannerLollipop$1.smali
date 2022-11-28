.class Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;
.super Ljava/lang/Object;
.source "BootloaderScannerLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->searchFor(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 62
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$000(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$102(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$002(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;Z)Z

    .line 74
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$200(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop$1;->this$0:Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;

    invoke-static {v1}, Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;->access$200(Lno/nordicsemi/android/dfu/internal/scanner/BootloaderScannerLollipop;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

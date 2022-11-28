.class Lcom/instabug/library/internal/video/ScreenRecordingService$d;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/internal/video/ScreenRecordingService$Action;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/ScreenRecordingService;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService$d;Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postComputationTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a(Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V

    return-void
.end method

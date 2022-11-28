.class Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b$a;
.super Ljava/lang/Object;
.source "InternalAutoScreenRecorderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;->a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->start()V

    return-void
.end method

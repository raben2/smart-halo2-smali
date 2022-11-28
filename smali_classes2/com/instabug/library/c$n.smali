.class Lcom/instabug/library/c$n;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$n;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "Dumping caches"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/c$n;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->t(Lcom/instabug/library/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/c$n;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->t(Lcom/instabug/library/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->cleanUpCache(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

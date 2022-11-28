.class final Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;
.super Ljava/lang/Object;
.source "VisualUserStepsHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsFileObservable(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/instabug/library/internal/storage/ProcessedUri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/instabug/library/internal/storage/ProcessedUri;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsFile(Landroid/content/Context;Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;->call()Lcom/instabug/library/internal/storage/ProcessedUri;

    move-result-object v0

    return-object v0
.end method

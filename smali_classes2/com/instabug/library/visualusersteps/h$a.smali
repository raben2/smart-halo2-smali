.class Lcom/instabug/library/visualusersteps/h$a;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/visualusersteps/h$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RV_RETURN_VALUE_IGNORED"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/instabug/library/util/DiskUtils;->getCleanDirectoryObservable(Ljava/io/File;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/visualusersteps/h$a$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/visualusersteps/h$a$a;-><init>(Lcom/instabug/library/visualusersteps/h$a;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

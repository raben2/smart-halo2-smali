.class Lcom/instabug/library/visualusersteps/g$b;
.super Ljava/lang/Object;
.source "VisualUserSteps.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/g;->c(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/library/visualusersteps/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/g$b;->b:Lcom/instabug/library/visualusersteps/g;

    iput-object p2, p0, Lcom/instabug/library/visualusersteps/g$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g$b;->b:Lcom/instabug/library/visualusersteps/g;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/g$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instabug/library/visualusersteps/g;->a(Lcom/instabug/library/visualusersteps/g;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/g$b;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class Lcom/instabug/bug/view/i/c/g$b;
.super Ljava/lang/Object;
.source "VisualUserStepsListPresenter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/i/c/g;->c(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/ArrayList<",
        "Lcom/instabug/bug/model/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/bug/view/i/c/g;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/i/c/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/g$b;->b:Lcom/instabug/bug/view/i/c/g;

    iput-object p2, p0, Lcom/instabug/bug/view/i/c/g$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/view/i/c/g$b;->call()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g$b;->b:Lcom/instabug/bug/view/i/c/g;

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/g$b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/view/i/c/g;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

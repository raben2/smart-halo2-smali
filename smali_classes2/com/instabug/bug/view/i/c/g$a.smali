.class Lcom/instabug/bug/view/i/c/g$a;
.super Ljava/lang/Object;
.source "VisualUserStepsListPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/i/c/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/ArrayList<",
        "Lcom/instabug/bug/model/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/i/c/e;

.field final synthetic b:Lcom/instabug/bug/view/i/c/g;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/i/c/g;Lcom/instabug/bug/view/i/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/g$a;->b:Lcom/instabug/bug/view/i/c/g;

    iput-object p2, p0, Lcom/instabug/bug/view/i/c/g$a;->a:Lcom/instabug/bug/view/i/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g$a;->b:Lcom/instabug/bug/view/i/c/g;

    invoke-static {v0, p1}, Lcom/instabug/bug/view/i/c/g;->a(Lcom/instabug/bug/view/i/c/g;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g$a;->a:Lcom/instabug/bug/view/i/c/e;

    invoke-interface {v0}, Lcom/instabug/bug/view/i/c/e;->a()V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g$a;->a:Lcom/instabug/bug/view/i/c/e;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/i/c/e;->a(Ljava/util/ArrayList;)V

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
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/i/c/g$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

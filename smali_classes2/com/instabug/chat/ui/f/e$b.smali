.class Lcom/instabug/chat/ui/f/e$b;
.super Ljava/lang/Object;
.source "ChatPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/chat/eventbus/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/f/e;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/e$b;->a:Lcom/instabug/chat/ui/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/eventbus/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e$b;->a:Lcom/instabug/chat/ui/f/e;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/ui/f/e;)Lcom/instabug/chat/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/chat/eventbus/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/e$b;->a:Lcom/instabug/chat/ui/f/e;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/e;->a(Lcom/instabug/chat/ui/f/e;)Lcom/instabug/chat/e/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/chat/eventbus/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/chat/e/b;->setId(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    :cond_0
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
    check-cast p1, Lcom/instabug/chat/eventbus/a;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/e$b;->a(Lcom/instabug/chat/eventbus/a;)V

    return-void
.end method

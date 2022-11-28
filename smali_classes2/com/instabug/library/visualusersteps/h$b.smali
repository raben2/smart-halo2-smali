.class Lcom/instabug/library/visualusersteps/h$b;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/visualusersteps/h;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/h$b;->a:Lcom/instabug/library/visualusersteps/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7114bf7f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x28273f8e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "finished"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "started"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/h$b;->a:Lcom/instabug/library/visualusersteps/h;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/h;->c(Lcom/instabug/library/visualusersteps/h;)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/h$b;->a:Lcom/instabug/library/visualusersteps/h;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/h;)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/h$b;->a:Lcom/instabug/library/visualusersteps/h;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/h;->b(Lcom/instabug/library/visualusersteps/h;)V

    :cond_5
    :goto_1
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
    check-cast p1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/h$b;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method

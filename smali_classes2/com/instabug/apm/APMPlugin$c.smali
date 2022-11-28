.class Lcom/instabug/apm/APMPlugin$c;
.super Ljava/lang/Object;
.source "APMPlugin.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/APMPlugin;->registerConfigurationChange()V
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
.field final synthetic a:Lcom/instabug/apm/APMPlugin;


# direct methods
.method constructor <init>(Lcom/instabug/apm/APMPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/APMPlugin$c;->a:Lcom/instabug/apm/APMPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "featuresFetched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->a()Lcom/instabug/apm/c/a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/apm/c/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/instabug/apm/APMPlugin$c;->a:Lcom/instabug/apm/APMPlugin;

    invoke-static {p1}, Lcom/instabug/apm/APMPlugin;->access$000(Lcom/instabug/apm/APMPlugin;)Lcom/instabug/apm/f/d/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/apm/f/d/c;->b()V

    .line 6
    iget-object p1, p0, Lcom/instabug/apm/APMPlugin$c;->a:Lcom/instabug/apm/APMPlugin;

    invoke-static {p1}, Lcom/instabug/apm/APMPlugin;->access$100(Lcom/instabug/apm/APMPlugin;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/apm/APMPlugin$c;->a:Lcom/instabug/apm/APMPlugin;

    invoke-static {p1}, Lcom/instabug/apm/APMPlugin;->access$200(Lcom/instabug/apm/APMPlugin;)V

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
    check-cast p1, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/apm/APMPlugin$c;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method

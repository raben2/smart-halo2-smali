.class Lcom/instabug/survey/c$b;
.super Ljava/lang/Object;
.source "SurveysManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/user/UserEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/c;


# direct methods
.method constructor <init>(Lcom/instabug/survey/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/c$b;->a:Lcom/instabug/survey/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/user/UserEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/instabug/survey/b;

    if-eqz v0, :cond_0

    const-string p1, "Surveys auto showing is triggered"

    .line 2
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/c$b;->a:Lcom/instabug/survey/c;

    invoke-static {p1}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/c;)Lcom/instabug/survey/h/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/h/h;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instabug/library/user/UserEvent;->getEventIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Survey with event: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/user/UserEvent;->getEventIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} is triggered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/c$b;->a:Lcom/instabug/survey/c;

    invoke-static {v0}, Lcom/instabug/survey/c;->c(Lcom/instabug/survey/c;)Lcom/instabug/survey/h/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/user/UserEvent;->getEventIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/survey/h/h;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
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
    check-cast p1, Lcom/instabug/library/user/UserEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/c$b;->a(Lcom/instabug/library/user/UserEvent;)V

    return-void
.end method

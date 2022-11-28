.class Lcom/instabug/survey/SurveyPlugin$b;
.super Ljava/lang/Object;
.source "SurveyPlugin.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/SurveyPlugin;->subscribeOnSDKEvents()V
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
.field final synthetic a:Lcom/instabug/survey/SurveyPlugin;


# direct methods
.method constructor <init>(Lcom/instabug/survey/SurveyPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/SurveyPlugin$b;->a:Lcom/instabug/survey/SurveyPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x11531bc3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x36ebcb

    if-eq v2, v3, :cond_1

    const v3, 0x6de15a2e

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "features"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/instabug/survey/SurveyPlugin$b;->a:Lcom/instabug/survey/SurveyPlugin;

    invoke-static {p1}, Lcom/instabug/survey/SurveyPlugin;->access$600(Lcom/instabug/survey/SurveyPlugin;)V

    .line 16
    iget-object p1, p0, Lcom/instabug/survey/SurveyPlugin$b;->a:Lcom/instabug/survey/SurveyPlugin;

    invoke-static {p1}, Lcom/instabug/survey/SurveyPlugin;->access$700(Lcom/instabug/survey/SurveyPlugin;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fetched"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/instabug/survey/SurveyPlugin$b;->a:Lcom/instabug/survey/SurveyPlugin;

    invoke-static {p1}, Lcom/instabug/survey/SurveyPlugin;->access$500(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/survey/SurveyPlugin;->startFetchingSurveys(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "logged_out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    invoke-static {}, Lcom/instabug/survey/SurveyPlugin;->access$400()V

    :cond_7
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

    invoke-virtual {p0, p1}, Lcom/instabug/survey/SurveyPlugin$b;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V

    return-void
.end method

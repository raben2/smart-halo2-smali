.class public Lcom/instabug/featuresrequest/e/a;
.super Ljava/lang/Object;
.source "AddCommentUtil.java"


# direct methods
.method public static a(Lcom/instabug/library/network/Request;Lcom/instabug/featuresrequest/d/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 2
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/f;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/d;->k()Ljava/lang/String;

    move-result-object p1

    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 8
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "push_token"

    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    return-void
.end method

.class public Lcom/instabug/survey/announcements/network/a;
.super Ljava/lang/Object;
.source "AnnouncementSubmittingUtils.java"


# direct methods
.method private static a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/e/c/a;

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v3

    const-string v4, "event_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->c()J

    move-result-wide v3

    const-string v5, "timestamp"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->b()I

    move-result v1

    const-string v3, "index"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/instabug/library/network/Request;Ljava/lang/String;Lcom/instabug/survey/d/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/announcements/network/a;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "responses"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "announcement_id"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 6
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getIdentifiedUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 8
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "responded_at"

    invoke-virtual {p0, v1, v0}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    const-string v0, "app_version"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 10
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/announcements/network/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "events"

    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "locale"

    invoke-virtual {p0, p2, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 14
    :cond_2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "push_token"

    invoke-virtual {p0, p2, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/d/c/c;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/d/c/c;

    .line 3
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->d()J

    move-result-wide v3

    const-string v1, "announcement_item_id"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

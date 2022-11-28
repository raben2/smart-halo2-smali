.class public Lcom/instabug/featuresrequest/d/e;
.super Lcom/instabug/featuresrequest/d/f;
.source "StatusChange.java"


# instance fields
.field private c:Lcom/instabug/featuresrequest/d/b$a;

.field private d:Lcom/instabug/featuresrequest/d/b$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/d/f;-><init>()V

    .line 9
    sget-object v0, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    iput-object v0, p0, Lcom/instabug/featuresrequest/d/e;->c:Lcom/instabug/featuresrequest/d/b$a;

    .line 10
    iput-object v0, p0, Lcom/instabug/featuresrequest/d/e;->d:Lcom/instabug/featuresrequest/d/b$a;

    const-string v0, "#000000"

    .line 11
    iput-object v0, p0, Lcom/instabug/featuresrequest/d/e;->e:Ljava/lang/String;

    const-string v0, "#000000"

    .line 12
    iput-object v0, p0, Lcom/instabug/featuresrequest/d/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/featuresrequest/d/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/e;->d:Lcom/instabug/featuresrequest/d/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/e;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/instabug/featuresrequest/d/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/e;->c:Lcom/instabug/featuresrequest/d/b$a;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/e;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/instabug/featuresrequest/d/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/e;->d:Lcom/instabug/featuresrequest/d/b$a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/instabug/featuresrequest/d/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/e;->c:Lcom/instabug/featuresrequest/d/b$a;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "StatusChange"

    .line 1
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "created_at"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/featuresrequest/d/f;->a(J)V

    :cond_0
    const-string p1, "type"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "type"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x89dc8e2

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    const v3, 0x38a5ee5f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "comment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "state_change"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-eq v1, v4, :cond_4

    .line 14
    sget-object p1, Lcom/instabug/featuresrequest/d/f$a;->COMMENT:Lcom/instabug/featuresrequest/d/f$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/f;->a(Lcom/instabug/featuresrequest/d/f$a;)V

    goto :goto_1

    .line 17
    :cond_4
    sget-object p1, Lcom/instabug/featuresrequest/d/f$a;->STATUS_CHANE:Lcom/instabug/featuresrequest/d/f$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/f;->a(Lcom/instabug/featuresrequest/d/f$a;)V

    :cond_5
    :goto_1
    const-string p1, "old_status"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "old_status"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 39
    :pswitch_0
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->MaybeLater:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_2

    .line 40
    :pswitch_1
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_2

    .line 41
    :pswitch_2
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->InProgress:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_2

    .line 42
    :pswitch_3
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Planned:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_2

    .line 43
    :pswitch_4
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Lcom/instabug/featuresrequest/d/b$a;)V

    :cond_6
    :goto_2
    const-string p1, "new_status"

    .line 62
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "new_status"

    .line 63
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 78
    :pswitch_5
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->MaybeLater:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_3

    .line 79
    :pswitch_6
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_3

    .line 80
    :pswitch_7
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->InProgress:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_3

    .line 81
    :pswitch_8
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Planned:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_3

    .line 82
    :pswitch_9
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    :cond_7
    :goto_3
    const-string p1, "new_status_color"

    .line 102
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "new_status_color"

    .line 103
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->a(Ljava/lang/String;)V

    :cond_8
    const-string p1, "old_status_color"

    .line 106
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "old_status_color"

    .line 107
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/e;->b(Ljava/lang/String;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public toJson()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/f;->a()J

    move-result-wide v1

    const-string v3, "created_at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/f;->b()Lcom/instabug/featuresrequest/d/f$a;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/e;->e()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b$a;->a()I

    move-result v1

    const-string v2, "old_status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/e;->c()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b$a;->a()I

    move-result v1

    const-string v2, "new_status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "old_status_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/e;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new_status_color"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/instabug/featuresrequest/d/b;
.super Ljava/lang/Object;
.source "FeatureRequest.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/d/b$b;,
        Lcom/instabug/featuresrequest/d/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/instabug/featuresrequest/d/b$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/instabug/featuresrequest/d/b$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_INITIALIZED"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/featuresrequest/d/b$b;->NOTHING:Lcom/instabug/featuresrequest/d/b$b;

    iput-object v0, p0, Lcom/instabug/featuresrequest/d/b;->n:Lcom/instabug/featuresrequest/d/b$b;

    .line 23
    sget-object v0, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    iput-object v0, p0, Lcom/instabug/featuresrequest/d/b;->d:Lcom/instabug/featuresrequest/d/b$a;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instabug/featuresrequest/d/b;->a:J

    .line 25
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->k:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/instabug/featuresrequest/d/b;->l:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/instabug/featuresrequest/d/b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/d/b;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/instabug/featuresrequest/d/b;->g:J

    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->d:Lcom/instabug/featuresrequest/d/b$a;

    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b$b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->n:Lcom/instabug/featuresrequest/d/b$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/d/b;->j:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/instabug/featuresrequest/d/b;->i:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/d/b;->h:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/featuresrequest/d/b;->a:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/instabug/featuresrequest/d/b;->g:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "FeatureRequest"

    .line 1
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "id"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/featuresrequest/d/b;->b(J)V

    :cond_0
    const-string p1, "title"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "title"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->d(Ljava/lang/String;)V

    :cond_1
    const-string p1, "description"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "description"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->c(Ljava/lang/String;)V

    :cond_2
    const-string p1, "creator_name"

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "creator_name"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->b(Ljava/lang/String;)V

    :cond_3
    const-string p1, "status"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "status"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->MaybeLater:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_0

    .line 38
    :pswitch_1
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->InProgress:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_0

    .line 40
    :pswitch_3
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Planned:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    goto :goto_0

    .line 41
    :pswitch_4
    sget-object p1, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$a;)V

    :cond_4
    :goto_0
    const-string p1, "color_code"

    .line 60
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "color_code"

    .line 61
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Ljava/lang/String;)V

    :cond_5
    const-string p1, "likes_count"

    .line 63
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "likes_count"

    .line 64
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->b(I)V

    :cond_6
    const-string p1, "date"

    .line 67
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "date"

    .line 68
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/featuresrequest/d/b;->a(J)V

    :cond_7
    const-string p1, "comments_count"

    .line 71
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "comments_count"

    .line 72
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(I)V

    :cond_8
    const-string p1, "liked"

    .line 74
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "liked"

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Z)V

    :cond_9
    const-string p1, "ib_user_vote_status"

    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "ib_user_vote_status"

    .line 79
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 94
    sget-object p1, Lcom/instabug/featuresrequest/d/b$b;->NOTHING:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    goto :goto_1

    .line 95
    :pswitch_5
    sget-object p1, Lcom/instabug/featuresrequest/d/b$b;->USER_UN_VOTED:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    goto :goto_1

    .line 96
    :pswitch_6
    sget-object p1, Lcom/instabug/featuresrequest/d/b$b;->USER_VOTED_UP:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    goto :goto_1

    .line 97
    :pswitch_7
    sget-object p1, Lcom/instabug/featuresrequest/d/b$b;->UPLOADED:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    goto :goto_1

    .line 98
    :pswitch_8
    sget-object p1, Lcom/instabug/featuresrequest/d/b$b;->NOTHING:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    :cond_a
    :goto_1
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/featuresrequest/d/b;->a:J

    return-wide v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/d/b;->h:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/instabug/featuresrequest/d/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->d:Lcom/instabug/featuresrequest/d/b$a;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/instabug/featuresrequest/d/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/b;->n:Lcom/instabug/featuresrequest/d/b$b;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->l()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v0

    sget-object v1, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/d/b;->j:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v1

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->l()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/featuresrequest/d/b$a;->a()I

    move-result v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->d()J

    move-result-wide v2

    const-string v4, "date"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v2

    const-string v3, "likes_count"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->b()I

    move-result v2

    const-string v3, "comments_count"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v2

    const-string v3, "liked"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->n()Lcom/instabug/featuresrequest/d/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/featuresrequest/d/b$b;->a()I

    move-result v2

    const-string v3, "ib_user_vote_status"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color_code"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creator_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

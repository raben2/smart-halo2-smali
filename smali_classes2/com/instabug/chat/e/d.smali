.class public Lcom/instabug/chat/e/d;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/e/d$a;,
        Lcom/instabug/chat/e/d$b;,
        Lcom/instabug/chat/e/d$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:J

.field private g:Z

.field private h:J

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/instabug/chat/e/d$b;

.field private l:Lcom/instabug/chat/e/d$c;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/instabug/chat/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/chat/e/d;->a:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/e/d;->i:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/e/d;->j:Ljava/util/ArrayList;

    .line 6
    sget-object p1, Lcom/instabug/chat/e/d$b;->NOT_AVAILABLE:Lcom/instabug/chat/e/d$b;

    iput-object p1, p0, Lcom/instabug/chat/e/d;->k:Lcom/instabug/chat/e/d$b;

    .line 7
    sget-object p1, Lcom/instabug/chat/e/d$c;->NOT_AVAILABLE:Lcom/instabug/chat/e/d$c;

    iput-object p1, p0, Lcom/instabug/chat/e/d;->l:Lcom/instabug/chat/e/d$c;

    .line 8
    iput-object p2, p0, Lcom/instabug/chat/e/d;->m:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/instabug/chat/e/d;->n:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/instabug/chat/e/d;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/instabug/chat/e/d;

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/instabug/chat/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/d;->fromJson(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/d;",
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

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/chat/e/d;

    invoke-virtual {v3}, Lcom/instabug/chat/e/d;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/instabug/chat/e/d;
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/instabug/chat/e/d;->f:J

    return-object p0
.end method

.method public a(Lcom/instabug/chat/e/a;)Lcom/instabug/chat/e/d;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/instabug/chat/e/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;
    .locals 1

    .line 14
    iput-object p1, p0, Lcom/instabug/chat/e/d;->k:Lcom/instabug/chat/e/d$b;

    .line 15
    sget-object v0, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/instabug/chat/e/d;->g:Z

    :cond_0
    return-object p0
.end method

.method public a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/instabug/chat/e/d;->l:Lcom/instabug/chat/e/d$c;

    return-object p0
.end method

.method public a(Lcom/instabug/chat/e/e;)Lcom/instabug/chat/e/d;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/instabug/chat/e/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/instabug/chat/e/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/instabug/chat/e/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/e;",
            ">;)",
            "Lcom/instabug/chat/e/d;"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/instabug/chat/e/d;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Z)Lcom/instabug/chat/e/d;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/instabug/chat/e/d;->g:Z

    return-object p0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/e;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/instabug/chat/e/d;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(J)Lcom/instabug/chat/e/d;
    .locals 3

    .line 2
    iput-wide p1, p0, Lcom/instabug/chat/e/d;->h:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/instabug/chat/e/d;->g:Z

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/e/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/ArrayList;)Lcom/instabug/chat/e/d;
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/a;",
            ">;)",
            "Lcom/instabug/chat/e/d;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/instabug/chat/e/d;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/a;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/instabug/chat/e/d;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/chat/e/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/instabug/chat/e/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/e/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/instabug/chat/e/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/e/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/e/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_PARAMETER_ANNOTATION"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    instance-of v1, p1, Lcom/instabug/chat/e/d;

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Lcom/instabug/chat/e/d;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->g()Lcom/instabug/chat/e/d$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->g()Lcom/instabug/chat/e/d$b;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->o()Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->p()Z

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->p()Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->j()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->j()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/a;

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/e;

    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "id"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->c(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    :cond_0
    const-string p1, "chat_id"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "chat_id"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->b(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    :cond_1
    const-string p1, "body"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "body"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->a(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    :cond_2
    const-string p1, "sender_name"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "sender_name"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->e(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    :cond_3
    const-string p1, "sender_avatar_url"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "sender_avatar_url"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->d(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    :cond_4
    const-string p1, "messaged_at"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "messaged_at"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/chat/e/d;->a(J)Lcom/instabug/chat/e/d;

    :cond_5
    const-string p1, "read"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "read"

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->a(Z)Lcom/instabug/chat/e/d;

    :cond_6
    const-string p1, "read_at"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "read_at"

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/chat/e/d;->b(J)Lcom/instabug/chat/e/d;

    :cond_7
    const-string p1, "attachments"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "attachments"

    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/e/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->b(Ljava/util/ArrayList;)Lcom/instabug/chat/e/d;

    :cond_8
    const-string p1, "actions"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "actions"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/e/e;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->a(Ljava/util/ArrayList;)Lcom/instabug/chat/e/d;

    :cond_9
    const-string p1, "direction"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "direction"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x366eaf0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_b

    const v3, 0x73bc9b79

    if-eq v2, v3, :cond_a

    goto :goto_0

    :cond_a
    const-string v2, "inbound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    goto :goto_0

    :cond_b
    const-string v2, "outbound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    :goto_0
    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_d

    .line 32
    sget-object p1, Lcom/instabug/chat/e/d$b;->NOT_AVAILABLE:Lcom/instabug/chat/e/d$b;

    goto :goto_1

    .line 33
    :cond_d
    sget-object p1, Lcom/instabug/chat/e/d$b;->OUTBOUND:Lcom/instabug/chat/e/d$b;

    goto :goto_1

    .line 34
    :cond_e
    sget-object p1, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    .line 43
    :goto_1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;

    :cond_f
    const-string p1, "messages_state"

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "messages_state"

    .line 46
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/e/d$c;->valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/d$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    :cond_10
    return-void
.end method

.method public g()Lcom/instabug/chat/e/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->k:Lcom/instabug/chat/e/d$b;

    return-object v0
.end method

.method public h()Lcom/instabug/chat/e/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->l:Lcom/instabug/chat/e/d$c;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/chat/e/d;->f:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/chat/e/d;->h:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d;->k:Lcom/instabug/chat/e/d$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

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
    iget-boolean v0, p0, Lcom/instabug/chat/e/d;->g:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sender_name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sender_avatar_url"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v2

    const-string v4, "messaged_at"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->p()Z

    move-result v2

    const-string v3, "read"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->j()J

    move-result-wide v2

    const-string v4, "read_at"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "messages_state"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->g()Lcom/instabug/chat/e/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/chat/e/d$b;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "direction"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/chat/e/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "attachments"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/instabug/chat/e/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/chat/e/e;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "actions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/instabug/chat/e/d;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/instabug/chat/e/d;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->l:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->k:Lcom/instabug/chat/e/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/chat/e/d;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

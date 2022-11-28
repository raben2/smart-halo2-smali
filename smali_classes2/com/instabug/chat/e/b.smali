.class public Lcom/instabug/chat/e/b;
.super Lcom/instabug/library/model/BaseReport;
.source "Chat.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/e/b$c;,
        Lcom/instabug/chat/e/b$b;,
        Lcom/instabug/chat/e/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/instabug/library/model/State;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/instabug/chat/e/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/instabug/library/model/BaseReport;-><init>()V

    .line 11
    sget-object v0, Lcom/instabug/chat/e/b$a;->NOT_AVAILABLE:Lcom/instabug/chat/e/b$a;

    iput-object v0, p0, Lcom/instabug/chat/e/b;->d:Lcom/instabug/chat/e/b$a;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/model/BaseReport;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    .line 9
    sget-object p1, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/instabug/library/model/State;Lcom/instabug/chat/e/b$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/chat/e/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/model/BaseReport;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/chat/e/b;->b:Lcom/instabug/library/model/State;

    .line 4
    iput-object p3, p0, Lcom/instabug/chat/e/b;->d:Lcom/instabug/chat/e/b$a;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private k()Lcom/instabug/chat/e/d;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->d()Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 4
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    iget-object v2, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/instabug/chat/e/d;->b(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/chat/e/b$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/e/b;->d:Lcom/instabug/chat/e/b$a;

    return-object v0
.end method

.method public a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;
    .locals 0
    .param p1    # Lcom/instabug/chat/e/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/instabug/chat/e/b;->d:Lcom/instabug/chat/e/b$a;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/instabug/chat/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Lcom/instabug/chat/e/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Lcom/instabug/chat/e/b;->l()V

    return-object p0
.end method

.method public b()Lcom/instabug/chat/e/d;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/chat/e/d$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/instabug/chat/e/d$a;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->b()Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->b()Lcom/instabug/chat/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()Lcom/instabug/chat/e/d;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/chat/e/d$c;->SYNCED:Lcom/instabug/chat/e/d$c;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_PARAMETER_ANNOTATION"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    instance-of v1, p1, Lcom/instabug/chat/e/b;

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Lcom/instabug/chat/e/b;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/d;

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/chat/e/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/e/b;->k()Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 2
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

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->setId(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    :cond_0
    const-string p1, "messages"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "messages"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/e/d;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->a(Ljava/util/ArrayList;)Lcom/instabug/chat/e/b;

    :cond_1
    const-string p1, "chat_state"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "chat_state"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/chat/e/b$a;->valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/b$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    :cond_2
    const-string p1, "state"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lcom/instabug/library/model/State;

    invoke-direct {p1}, Lcom/instabug/library/model/State;-><init>()V

    const-string v1, "state"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/model/State;->fromJson(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->setState(Lcom/instabug/library/model/State;)Lcom/instabug/chat/e/b;

    :cond_3
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/e/b;->k()Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/instabug/library/model/State;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->b:Lcom/instabug/library/model/State;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->b()Lcom/instabug/chat/e/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->b()Lcom/instabug/chat/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/chat/i/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/d;

    .line 2
    invoke-virtual {v2}, Lcom/instabug/chat/e/d;->p()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/instabug/chat/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/d;

    invoke-virtual {v2, v1}, Lcom/instabug/chat/e/d;->a(Z)Lcom/instabug/chat/e/d;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/instabug/chat/e/b;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_PARAMETER_ANNOTATION"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/instabug/chat/e/b;->l()V

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Lcom/instabug/library/model/BaseReport;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_PARAMETER_ANNOTATION"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->setId(Ljava/lang/String;)Lcom/instabug/chat/e/b;

    move-result-object p1

    return-object p1
.end method

.method public setState(Lcom/instabug/library/model/State;)Lcom/instabug/chat/e/b;
    .locals 0
    .param p1    # Lcom/instabug/library/model/State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/e/b;->b:Lcom/instabug/library/model/State;

    return-object p0
.end method

.method public bridge synthetic setState(Lcom/instabug/library/model/State;)Lcom/instabug/library/model/BaseReport;
    .locals 0
    .param p1    # Lcom/instabug/library/model/State;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/e/b;->setState(Lcom/instabug/library/model/State;)Lcom/instabug/chat/e/b;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/chat/e/d;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chatState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/chat/e/b;->a()Lcom/instabug/chat/e/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

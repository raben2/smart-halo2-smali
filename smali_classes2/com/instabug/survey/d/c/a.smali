.class public Lcom/instabug/survey/d/c/a;
.super Ljava/lang/Object;
.source "Announcement.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;
.implements Lcom/instabug/survey/e/c/e;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/d/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:Lcom/instabug/survey/e/c/b;

.field private h:Lcom/instabug/survey/e/c/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/survey/d/c/a;->e:Z

    .line 10
    iput v0, p0, Lcom/instabug/survey/d/c/a;->f:I

    .line 11
    new-instance v0, Lcom/instabug/survey/e/c/b;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/b;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/d/c/a;->g:Lcom/instabug/survey/e/c/b;

    .line 12
    new-instance v0, Lcom/instabug/survey/e/c/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/instabug/survey/e/c/i;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "published"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/instabug/survey/d/c/a;

    invoke-direct {v3}, Lcom/instabug/survey/d/c/a;-><init>()V

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instabug/survey/d/c/a;->fromJson(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->c(I)V

    return-void
.end method

.method private y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->l()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 12
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/d/c/a;->c(J)V

    .line 13
    new-instance v0, Lcom/instabug/survey/e/c/a;

    sget-object v1, Lcom/instabug/survey/e/c/a$a;->SHOW:Lcom/instabug/survey/e/c/a$a;

    .line 14
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/instabug/survey/d/c/a;->y()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/survey/e/c/a;-><init>(Lcom/instabug/survey/e/c/a$a;JI)V

    .line 15
    iget-object v1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/instabug/survey/d/c/a;->f:I

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/survey/e/c/i;->a(J)V

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/f;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->a(Lcom/instabug/survey/e/c/f;)V

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/g;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->a(Lcom/instabug/survey/e/c/g;)V

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/i;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/d/c/c;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/instabug/survey/d/c/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->a(Z)V

    return-void
.end method

.method public b(J)Lcom/instabug/survey/d/c/a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/instabug/survey/d/c/a;->a:J

    return-object p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/d/c/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->b(Z)V

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/d/c/c;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/d/c/a;->c:I

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/survey/e/c/i;->b(J)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->c(Z)V

    return-void
.end method

.method public d()Lcom/instabug/survey/e/c/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->h()Lcom/instabug/survey/e/c/f;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/survey/d/c/a;->e:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/d/c/a;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/instabug/survey/d/c/a;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/instabug/survey/d/c/a;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 4
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
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/d/c/a;->b(J)Lcom/instabug/survey/d/c/a;

    :cond_0
    const-string p1, "type"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "type"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->c(I)V

    :cond_1
    const-string p1, "title"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "title"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->b(Ljava/lang/String;)V

    :cond_2
    const-string p1, "events"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object p1

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/e/c/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/survey/e/c/g;->a(Ljava/util/ArrayList;)V

    :cond_3
    const-string p1, "announcement_items"

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "announcement_items"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/d/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 18
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    :goto_0
    const-string p1, "target"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "target"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    :cond_5
    const-string p1, "answered"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "answered"

    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->b(Z)V

    :cond_6
    const-string p1, "is_cancelled"

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "is_cancelled"

    .line 28
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->c(Z)V

    :cond_7
    const-string p1, "announcement_state"

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "announcement_state"

    .line 31
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/f;)V

    :cond_8
    const-string p1, "session_counter"

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "session_counter"

    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/instabug/survey/d/c/a;->d(I)V

    :cond_9
    const-string p1, "dismissed_at"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "dismissed_at"

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/d/c/a;->a(J)V

    .line 39
    :cond_a
    iget-object p1, p0, Lcom/instabug/survey/d/c/a;->g:Lcom/instabug/survey/e/c/b;

    invoke-virtual {p1, v0}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurveyId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/d/c/a;->a:J

    return-wide v0
.end method

.method public getUserInteraction()Lcom/instabug/survey/e/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->d()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/d/c/a;->a:J

    return-wide v0
.end method

.method public j()Lcom/instabug/survey/e/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->g:Lcom/instabug/survey/e/c/b;

    return-object v0
.end method

.method public k()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/e/c/a;

    .line 4
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    if-eq v2, v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    if-ne v2, v3, :cond_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->c()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->e()I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/d/c/a;->c(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Lcom/instabug/survey/e/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/d/c/a;->c:I

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->n()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->o()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->p()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/d/c/a;->e:Z

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

    .line 2
    iget-wide v1, p0, Lcom/instabug/survey/d/c/a;->a:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lcom/instabug/survey/d/c/a;->c:I

    const-string v3, "type"

    .line 3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->b:Ljava/lang/String;

    const-string v3, "title"

    .line 4
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->d:Ljava/util/ArrayList;

    .line 5
    invoke-static {v2}, Lcom/instabug/survey/d/c/c;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "announcement_items"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/survey/e/c/g;->a(Lcom/instabug/survey/e/c/g;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "target"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 7
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/survey/e/c/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 8
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->o()Z

    move-result v2

    const-string v3, "answered"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->g()J

    move-result-wide v2

    const-string v4, "dismissed_at"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 10
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->p()Z

    move-result v2

    const-string v3, "is_cancelled"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->d()Lcom/instabug/survey/e/c/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "announcement_state"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->x()Z

    move-result v2

    const-string v3, "should_show_again"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->l()I

    move-result v2

    const-string v3, "session_counter"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    iget-object v1, p0, Lcom/instabug/survey/d/c/a;->g:Lcom/instabug/survey/e/c/b;

    invoke-virtual {v1, v0}, Lcom/instabug/survey/e/c/b;->b(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->toJson()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Announcement"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instabug/survey/e/c/g;->a(Ljava/util/ArrayList;)V

    .line 3
    new-instance v1, Lcom/instabug/survey/e/c/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instabug/survey/e/c/i;-><init>(I)V

    iput-object v1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 4
    invoke-virtual {v1, v0}, Lcom/instabug/survey/e/c/i;->a(Lcom/instabug/survey/e/c/g;)V

    return-void
.end method

.method public v()V
    .locals 6

    .line 1
    sget-object v0, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/f;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/e/c/i;->a(J)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->b(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->c(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->a(Z)V

    .line 8
    iget-object v1, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/e/c/a;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v0

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    if-ne v0, v2, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/instabug/survey/e/c/a;

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    iget-object v3, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    .line 15
    invoke-virtual {v3}, Lcom/instabug/survey/e/c/i;->c()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->h()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/instabug/survey/e/c/a;-><init>(Lcom/instabug/survey/e/c/a$a;JI)V

    .line 16
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->c(Z)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->b(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/c/a;->a(Z)V

    .line 8
    new-instance v1, Lcom/instabug/survey/e/c/a;

    sget-object v2, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    .line 9
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/instabug/survey/e/c/a;-><init>(Lcom/instabug/survey/e/c/a$a;JI)V

    .line 11
    sget-object v2, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    invoke-virtual {p0, v2}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/f;)V

    .line 14
    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 16
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/e/c/a;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v0

    sget-object v3, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    if-ne v0, v3, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v0

    sget-object v3, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    if-ne v0, v3, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/i;->i()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->d()Lcom/instabug/survey/e/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/d;->c()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/instabug/survey/d/c/a;->h:Lcom/instabug/survey/e/c/i;

    invoke-virtual {v2}, Lcom/instabug/survey/e/c/i;->n()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 4
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->d()Lcom/instabug/survey/e/c/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/d;->d()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 5
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->m()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/instabug/survey/h/a;->b(J)I

    move-result v5

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->d()Lcom/instabug/survey/e/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/d;->a()I

    move-result v0

    const/4 v6, 0x0

    if-lt v5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    return v3
.end method

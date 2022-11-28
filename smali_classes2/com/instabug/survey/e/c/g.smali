.class public Lcom/instabug/survey/e/c/g;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/instabug/survey/e/c/h;

.field private f:Lcom/instabug/survey/e/c/d;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->c:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lcom/instabug/survey/e/c/h;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/h;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->e:Lcom/instabug/survey/e/c/h;

    .line 7
    new-instance v0, Lcom/instabug/survey/e/c/d;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/d;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->f:Lcom/instabug/survey/e/c/d;

    const-string v0, "and"

    .line 8
    iput-object v0, p0, Lcom/instabug/survey/e/c/g;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/instabug/survey/e/c/g;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/instabug/survey/e/c/g;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/survey/e/c/g;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/g;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/instabug/survey/e/c/d;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->f:Lcom/instabug/survey/e/c/d;

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/h;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->e:Lcom/instabug/survey/e/c/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public d()Lcom/instabug/survey/e/c/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->f:Lcom/instabug/survey/e/c/d;

    return-object v0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/e/c/g;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/instabug/library/util/filters/Filters;->applyOn(Ljava/lang/Object;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/survey/h/f;->a()Lcom/instabug/library/util/filters/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/filters/Filters;->apply(Lcom/instabug/library/util/filters/Filter;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/util/filters/Filters;->thenGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Lcom/instabug/survey/e/c/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->e:Lcom/instabug/survey/e/c/h;

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "primitive_types"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "primitive_types"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->c(Ljava/util/ArrayList;)V

    :cond_0
    const-string p1, "custom_attributes"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "custom_attributes"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->b(Ljava/util/ArrayList;)V

    :cond_1
    const-string p1, "user_events"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "user_events"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->d(Ljava/util/ArrayList;)V

    :cond_2
    const-string p1, "events"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "events"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/instabug/survey/e/c/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->a(Ljava/util/ArrayList;)V

    :cond_3
    const-string p1, "operator"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "operator"

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->a(Ljava/lang/String;)V

    :cond_4
    const-string p1, "trigger"

    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "trigger"

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/e/c/h;->c(Ljava/lang/String;)Lcom/instabug/survey/e/c/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->a(Lcom/instabug/survey/e/c/h;)V

    :cond_5
    const-string p1, "frequency"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "frequency"

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/e/c/d;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/g;->a(Lcom/instabug/survey/e/c/d;)V

    :cond_6
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/g;->c:Ljava/util/ArrayList;

    return-object v0
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
    iget-object v1, p0, Lcom/instabug/survey/e/c/g;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "primitive_types"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/e/c/g;->b:Ljava/util/ArrayList;

    .line 3
    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "custom_attributes"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/e/c/g;->c:Ljava/util/ArrayList;

    .line 4
    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "user_events"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/e/c/g;->d:Ljava/util/ArrayList;

    .line 5
    invoke-static {v2}, Lcom/instabug/survey/e/c/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/e/c/g;->e:Lcom/instabug/survey/e/c/h;

    .line 6
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/h;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "trigger"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/e/c/g;->f:Lcom/instabug/survey/e/c/d;

    .line 7
    invoke-virtual {v2}, Lcom/instabug/survey/e/c/d;->e()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "frequency"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/survey/e/c/g;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "operator"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/instabug/bug/settings/d;
.super Ljava/lang/Object;
.source "ReportTypesManager.java"


# static fields
.field private static c:Lcom/instabug/bug/settings/d;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/bug/settings/d;->b:Z

    .line 5
    invoke-direct {p0}, Lcom/instabug/bug/settings/d;->b()V

    return-void
.end method

.method public static a()Lcom/instabug/bug/settings/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/settings/d;->c:Lcom/instabug/bug/settings/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/settings/d;

    invoke-direct {v0}, Lcom/instabug/bug/settings/d;-><init>()V

    sput-object v0, Lcom/instabug/bug/settings/d;->c:Lcom/instabug/bug/settings/d;

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/bug/settings/d;->c:Lcom/instabug/bug/settings/d;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/settings/d;->a:Ljava/util/Map;

    .line 2
    iget-boolean v1, p0, Lcom/instabug/bug/settings/d;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "feedback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/settings/d;->a:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/instabug/bug/settings/d;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/settings/d;->a:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/instabug/bug/settings/d;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ask a question"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/settings/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_NULLABLE_DEREFERENCE"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/settings/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

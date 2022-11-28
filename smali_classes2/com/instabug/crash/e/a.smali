.class public Lcom/instabug/crash/e/a;
.super Ljava/lang/Object;
.source "CrashSettings.java"


# static fields
.field private static a:Lcom/instabug/crash/e/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/crash/e/a;

    invoke-direct {v0}, Lcom/instabug/crash/e/a;-><init>()V

    sput-object v0, Lcom/instabug/crash/e/a;->a:Lcom/instabug/crash/e/a;

    .line 2
    invoke-static {p0}, Lcom/instabug/crash/e/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static c()Lcom/instabug/crash/e/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/crash/e/a;->a:Lcom/instabug/crash/e/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/crash/e/a;

    invoke-direct {v0}, Lcom/instabug/crash/e/a;-><init>()V

    sput-object v0, Lcom/instabug/crash/e/a;->a:Lcom/instabug/crash/e/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/crash/e/a;->a:Lcom/instabug/crash/e/a;

    return-object v0
.end method

.method public static d()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/crash/e/b;->a()V

    .line 2
    invoke-static {}, Lcom/instabug/crash/e/c;->d()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/instabug/crash/e/a;->a:Lcom/instabug/crash/e/a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 5
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/e/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/crash/e/c;->a(J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/crash/e/c;->a(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/e/c;->b()Z

    move-result v0

    return v0
.end method

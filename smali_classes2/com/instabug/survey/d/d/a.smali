.class public Lcom/instabug/survey/d/d/a;
.super Ljava/lang/Object;
.source "AnnouncementsSettings.java"


# static fields
.field private static a:Lcom/instabug/survey/d/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/d/d/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/d/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/survey/d/d/b;->a(J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/d/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/instabug/survey/d/d/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/survey/d/d/a;->a:Lcom/instabug/survey/d/d/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/survey/d/d/a;

    invoke-direct {v0}, Lcom/instabug/survey/d/d/a;-><init>()V

    sput-object v0, Lcom/instabug/survey/d/d/a;->a:Lcom/instabug/survey/d/d/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/survey/d/d/a;->a:Lcom/instabug/survey/d/d/a;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 3
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/d/b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/survey/d/d/b;->c(J)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

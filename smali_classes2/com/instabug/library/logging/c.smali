.class public final Lcom/instabug/library/logging/c;
.super Ljava/lang/Object;
.source "InstabugSDKDiskLogger.java"


# instance fields
.field private a:Lcom/instabug/library/logging/e;

.field private b:Lcom/instabug/library/l/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/logging/e;

    invoke-direct {v0, p1}, Lcom/instabug/library/logging/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/logging/c;->a:Lcom/instabug/library/logging/e;

    .line 3
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/logging/c;->b:Lcom/instabug/library/l/c/a;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/instabug/library/logging/c;->b:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/instabug/library/logging/c;->a:Lcom/instabug/library/logging/e;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/logging/e;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/library/model/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/library/logging/c;->b:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/library/logging/c;->a:Lcom/instabug/library/logging/e;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/instabug/library/logging/e;->a(Lcom/instabug/library/model/d;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/c;->b:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/logging/c;->a:Lcom/instabug/library/logging/e;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/instabug/library/logging/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/c;->b:Lcom/instabug/library/l/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/instabug/library/logging/c;->a:Lcom/instabug/library/logging/e;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/instabug/library/logging/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

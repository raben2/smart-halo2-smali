.class final enum Lcom/instabug/library/l/b/i/a$a;
.super Lcom/instabug/library/l/b/i/a;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/l/b/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/l/b/i/a;-><init>(Ljava/lang/String;ILcom/instabug/library/l/b/i/a$a;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->c()I

    move-result v0

    .line 3
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e20

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->d()I

    move-result v0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/l/c/a;->c()Lcom/instabug/library/l/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/l/c/a;->a()Lcom/instabug/library/model/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/model/e;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

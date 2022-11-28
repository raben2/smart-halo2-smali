.class public Lcom/instabug/chat/e/d$a;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/instabug/chat/e/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/instabug/chat/e/d$a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/instabug/chat/e/d$a;->a:I

    .line 11
    iput p1, p0, Lcom/instabug/chat/e/d$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/e/d;Lcom/instabug/chat/e/d;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/instabug/chat/e/d$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Message comparator wasn\'t provided comparison messageIssueType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 16
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 17
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/instabug/chat/e/d;->i()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/d;

    check-cast p2, Lcom/instabug/chat/e/d;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/chat/e/d$a;->a(Lcom/instabug/chat/e/d;Lcom/instabug/chat/e/d;)I

    move-result p1

    return p1
.end method

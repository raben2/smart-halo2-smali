.class public Lcom/instabug/chat/e/b$b;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/instabug/chat/e/b;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->c()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/instabug/chat/e/b;->c()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    check-cast p2, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/chat/e/b$b;->a(Lcom/instabug/chat/e/b;Lcom/instabug/chat/e/b;)I

    move-result p1

    return p1
.end method

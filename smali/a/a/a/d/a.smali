.class public La/a/a/d/a;
.super Ljava/lang/Object;
.source "Anr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/instabug/library/model/State;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_INITIALIZED"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/instabug/library/model/State;->getState(Landroid/content/Context;)Lcom/instabug/library/model/State;

    move-result-object p1

    invoke-direct {p0, v0, p2, p3, p1}, La/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/model/State;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/a/d/a;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/library/model/State;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_INITIALIZED"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, La/a/a/d/a;->a:Ljava/lang/String;

    .line 6
    iput-object p4, p0, La/a/a/d/a;->g:Lcom/instabug/library/model/State;

    .line 7
    iput-object p2, p0, La/a/a/d/a;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, La/a/a/d/a;->c:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/a/d/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 20
    iget v0, p0, La/a/a/d/a;->e:I

    return v0
.end method

.method public a(Landroid/net/Uri;)La/a/a/d/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->ATTACHMENT_FILE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {p0, p1, v0}, La/a/a/d/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)La/a/a/d/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)La/a/a/d/a;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Adding attachment with a null Uri, ignored."

    .line 3
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/instabug/library/model/Attachment;

    invoke-direct {v0}, Lcom/instabug/library/model/Attachment;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/Attachment;->setName(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/model/Attachment;->setLocalPath(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    .line 13
    :cond_2
    invoke-virtual {v0, p2}, Lcom/instabug/library/model/Attachment;->setType(Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/library/model/Attachment;

    .line 14
    sget-object p1, Lcom/instabug/library/model/Attachment$Type;->VISUAL_USER_STEPS:Lcom/instabug/library/model/Attachment$Type;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Lcom/instabug/library/model/Attachment;->setEncrypted(Z)V

    .line 17
    :cond_3
    iget-object p1, p0, La/a/a/d/a;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/util/List;)La/a/a/d/a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;)",
            "La/a/a/d/a;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, La/a/a/d/a;->d:Ljava/util/List;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 21
    iput p1, p0, La/a/a/d/a;->e:I

    return-void
.end method

.method public a(Lcom/instabug/library/model/State;)V
    .locals 0

    .line 19
    iput-object p1, p0, La/a/a/d/a;->g:Lcom/instabug/library/model/State;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, La/a/a/d/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/d/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, La/a/a/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, La/a/a/d/a;->f:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/instabug/library/model/State;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/d/a;->g:Lcom/instabug/library/model/State;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/d/a;->f:Ljava/lang/String;

    return-object v0
.end method

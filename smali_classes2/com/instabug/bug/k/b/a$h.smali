.class Lcom/instabug/bug/k/b/a$h;
.super Ljava/lang/Object;
.source "ActivityViewInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/k/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/bug/k/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/k/b/a$h;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/k/b/a$h;->a:I

    return-void
.end method

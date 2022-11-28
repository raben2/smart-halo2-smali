.class public Lcom/instabug/library/model/h$b;
.super Ljava/lang/Object;
.source "UserAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/h$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/model/h$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/instabug/library/model/h$b;
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/library/model/h$b;->c:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/library/model/h$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/model/h$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/instabug/library/model/h$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/model/h$b;->e:Z

    return-object p0
.end method

.method public a()Lcom/instabug/library/model/h;
    .locals 8

    .line 4
    new-instance v7, Lcom/instabug/library/model/h;

    iget-object v1, p0, Lcom/instabug/library/model/h$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/model/h$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/instabug/library/model/h$b;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/instabug/library/model/h$b;->e:Z

    iget v5, p0, Lcom/instabug/library/model/h$b;->c:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/instabug/library/model/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/instabug/library/model/h$a;)V

    return-object v7
.end method

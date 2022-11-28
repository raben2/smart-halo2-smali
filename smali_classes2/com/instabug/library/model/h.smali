.class public Lcom/instabug/library/model/h;
.super Ljava/lang/Object;
.source "UserAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/model/h$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/model/h;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/instabug/library/model/h;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/instabug/library/model/h;->d:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/instabug/library/model/h;->e:Z

    .line 7
    iput p5, p0, Lcom/instabug/library/model/h;->a:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/instabug/library/model/h$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/instabug/library/model/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/model/h$b;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/model/h$b;

    iget-object v1, p0, Lcom/instabug/library/model/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instabug/library/model/h;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/model/h$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instabug/library/model/h;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/h$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/h$b;

    move-result-object v0

    iget v1, p0, Lcom/instabug/library/model/h;->a:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/h$b;->a(I)Lcom/instabug/library/model/h$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instabug/library/model/h;->e:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/h$b;->a(Z)Lcom/instabug/library/model/h$b;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/h;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/h;->e:Z

    return v0
.end method

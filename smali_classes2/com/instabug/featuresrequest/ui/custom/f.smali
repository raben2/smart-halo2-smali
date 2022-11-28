.class public Lcom/instabug/featuresrequest/ui/custom/f;
.super Ljava/lang/Object;
.source "ToolbarActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/featuresrequest/ui/custom/f$a;,
        Lcom/instabug/featuresrequest/ui/custom/f$b;
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private c:Lcom/instabug/featuresrequest/ui/custom/f$a;

.field private d:Lcom/instabug/featuresrequest/ui/custom/f$b;


# direct methods
.method public constructor <init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/f;->a:I

    .line 3
    iput p2, p0, Lcom/instabug/featuresrequest/ui/custom/f;->b:I

    .line 4
    iput-object p3, p0, Lcom/instabug/featuresrequest/ui/custom/f;->c:Lcom/instabug/featuresrequest/ui/custom/f$a;

    .line 5
    iput-object p4, p0, Lcom/instabug/featuresrequest/ui/custom/f;->d:Lcom/instabug/featuresrequest/ui/custom/f$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/f;->a:I

    return v0
.end method

.method public b()Lcom/instabug/featuresrequest/ui/custom/f$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/f;->c:Lcom/instabug/featuresrequest/ui/custom/f$a;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/f;->b:I

    return v0
.end method

.method public d()Lcom/instabug/featuresrequest/ui/custom/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/f;->d:Lcom/instabug/featuresrequest/ui/custom/f$b;

    return-object v0
.end method

.class public Lcom/instabug/library/bugreporting/model/ReportCategory;
.super Ljava/lang/Object;
.source "ReportCategory.java"


# instance fields
.field private icon:I

.field private label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/bugreporting/model/ReportCategory;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/bugreporting/model/ReportCategory;

    invoke-direct {v0}, Lcom/instabug/library/bugreporting/model/ReportCategory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->icon:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->icon:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->label:Ljava/lang/String;

    return-void
.end method

.method public withIcon(I)Lcom/instabug/library/bugreporting/model/ReportCategory;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->icon:I

    return-object p0
.end method

.method public withLabel(Ljava/lang/String;)Lcom/instabug/library/bugreporting/model/ReportCategory;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/bugreporting/model/ReportCategory;->label:Ljava/lang/String;

    return-object p0
.end method

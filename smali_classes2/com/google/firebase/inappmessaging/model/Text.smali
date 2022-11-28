.class public Lcom/google/firebase/inappmessaging/model/Text;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/Text$Builder;
    }
.end annotation


# instance fields
.field private final hexColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Text$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/model/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/Text$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/model/Text$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/Text$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/Text;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/Text;

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public getHexColor()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

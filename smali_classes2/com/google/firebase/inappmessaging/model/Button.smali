.class public Lcom/google/firebase/inappmessaging/model/Button;
.super Ljava/lang/Object;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/Button$Builder;
    }
.end annotation


# instance fields
.field private final buttonHexColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final text:Lcom/google/firebase/inappmessaging/model/Text;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/Text;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/firebase/inappmessaging/model/Text;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/Button;->text:Lcom/google/firebase/inappmessaging/model/Text;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/Button;->buttonHexColor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/Text;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Button$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/model/Button;-><init>(Lcom/google/firebase/inappmessaging/model/Text;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/Button$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/model/Button$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/Button$Builder;-><init>()V

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
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/Button;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/Button;

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/Button;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Button;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Button;->text:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/Button;->text:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/Text;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Button;->buttonHexColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/Button;->buttonHexColor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public getButtonHexColor()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Button;->buttonHexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Lcom/google/firebase/inappmessaging/model/Text;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Button;->text:Lcom/google/firebase/inappmessaging/model/Text;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Button;->text:Lcom/google/firebase/inappmessaging/model/Text;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Button;->buttonHexColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

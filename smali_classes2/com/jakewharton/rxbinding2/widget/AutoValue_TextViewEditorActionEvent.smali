.class final Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;
.super Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;
.source "AutoValue_TextViewEditorActionEvent.java"


# instance fields
.field private final actionId:I

.field private final keyEvent:Landroid/view/KeyEvent;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    .line 23
    iput p2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->actionId:I

    .line 24
    iput-object p3, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public actionId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->actionId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 59
    check-cast p1, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;

    .line 60
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;->view()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->actionId:I

    .line 61
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;->actionId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;->keyEvent()Landroid/view/KeyEvent;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;->keyEvent()Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 73
    iget v2, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->actionId:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 75
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public keyEvent()Landroid/view/KeyEvent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewEditorActionEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method

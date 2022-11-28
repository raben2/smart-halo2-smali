.class public final synthetic Lcom/google/android/libraries/places/internal/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/AutocompleteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eb;->a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eb;->a:Lcom/google/android/libraries/places/widget/AutocompleteFragment;

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/widget/AutocompleteFragment;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

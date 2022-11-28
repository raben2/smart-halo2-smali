.class public final synthetic Lcom/google/android/libraries/places/internal/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ed;->a:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ed;->a:Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/widget/AutocompleteSupportFragment;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

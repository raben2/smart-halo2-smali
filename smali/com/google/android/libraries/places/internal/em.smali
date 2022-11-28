.class public final synthetic Lcom/google/android/libraries/places/internal/em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/em;->a:Lcom/google/android/libraries/places/internal/fs;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/em;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/fs;->a(I)Z

    move-result p1

    return p1
.end method

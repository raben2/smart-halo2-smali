.class public final synthetic Lcom/google/android/libraries/places/internal/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/el;->a:Lcom/google/android/libraries/places/internal/fs;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/el;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fs;->q()V

    return-void
.end method

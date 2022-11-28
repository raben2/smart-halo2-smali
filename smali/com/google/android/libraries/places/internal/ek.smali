.class public final synthetic Lcom/google/android/libraries/places/internal/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fs;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/fs;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ek;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fs;->r()Z

    move-result p1

    return p1
.end method

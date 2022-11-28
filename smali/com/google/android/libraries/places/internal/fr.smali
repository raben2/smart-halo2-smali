.class final synthetic Lcom/google/android/libraries/places/internal/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fq;

.field private final b:Lcom/google/android/libraries/places/internal/ex;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fq;Lcom/google/android/libraries/places/internal/ex;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fr;->a:Lcom/google/android/libraries/places/internal/fq;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fr;->b:Lcom/google/android/libraries/places/internal/ex;

    iput p3, p0, Lcom/google/android/libraries/places/internal/fr;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fr;->a:Lcom/google/android/libraries/places/internal/fq;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fr;->b:Lcom/google/android/libraries/places/internal/ex;

    iget v3, p0, Lcom/google/android/libraries/places/internal/fr;->c:I

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/fq;->itemView:Landroid/view/View;

    int-to-long v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ex;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 6
    throw p1
.end method

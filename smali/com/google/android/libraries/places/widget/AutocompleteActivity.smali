.class public Lcom/google/android/libraries/places/widget/AutocompleteActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PG"


# static fields
.field public static final RESULT_ERROR:I = 0x2


# instance fields
.field private a:Lcom/google/android/libraries/places/internal/fs;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->e()V

    .line 26
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 29
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 30
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    move-result v0

    const-string v1, "Places must be initialized."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/go;->b(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/gb;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fz;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fz;->a()Lcom/google/android/libraries/places/internal/fs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fs;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 12
    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->h()V

    .line 50
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 54
    throw v0
.end method

.method protected onPause()V
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->f()V

    .line 32
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 35
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method protected onResume()V
    .locals 1

    .line 19
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->d()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 24
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/fs;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 42
    throw p1
.end method

.method protected onStart()V
    .locals 1

    .line 13
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->c()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 18
    throw v0
.end method

.method protected onStop()V
    .locals 1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/widget/AutocompleteActivity;->a:Lcom/google/android/libraries/places/internal/fs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fs;->g()V

    .line 44
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 48
    throw v0
.end method

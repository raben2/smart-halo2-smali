.class public Lcom/google/android/libraries/places/internal/fs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/ny;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AppCompatActivity;

.field public final b:Landroid/content/Intent;

.field public final c:Lcom/google/android/libraries/places/internal/ge;

.field public final d:Lcom/google/android/libraries/places/internal/fj;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final e:Lcom/google/android/libraries/places/internal/gc;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public f:Landroid/os/Handler;

.field public g:Landroid/widget/EditText;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageButton;

.field public m:Landroid/widget/Button;

.field public final n:Z

.field public final o:Lcom/google/android/libraries/places/internal/eu;

.field public p:Z

.field public q:Z

.field public r:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Lcom/google/android/libraries/places/internal/fj;Lcom/google/android/libraries/places/internal/ge;Lcom/google/android/libraries/places/internal/a;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/google/android/libraries/places/internal/er;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/er;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->r:Landroid/text/TextWatcher;

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 151
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    .line 152
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    .line 153
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fs;->c:Lcom/google/android/libraries/places/internal/ge;

    if-eqz p2, :cond_0

    const-string p4, "activityState"

    .line 155
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "adapterState"

    .line 156
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "session"

    .line 157
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 158
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/fs;->n:Z

    const-string p4, "activityState"

    .line 159
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/libraries/places/internal/eu;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    const-string p4, "adapterState"

    .line 160
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/libraries/places/internal/fe;

    .line 161
    iget-object p3, p3, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    invoke-virtual {p3, p4}, Lcom/google/android/libraries/places/internal/ex;->a(Lcom/google/android/libraries/places/internal/fe;)V

    const-string p3, "session"

    .line 162
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/gc;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 163
    iput-boolean p2, p0, Lcom/google/android/libraries/places/internal/fs;->n:Z

    .line 164
    new-instance p3, Lcom/google/android/libraries/places/internal/eu;

    sget-object p4, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, v0, p2}, Lcom/google/android/libraries/places/internal/eu;-><init>(Lcom/google/android/libraries/places/internal/eu$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    .line 165
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    const-string p3, "mode"

    .line 166
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 167
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    const-string p4, "origin"

    .line 168
    invoke-virtual {p3, p4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/places/internal/ee;

    .line 169
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    const-string v0, "initial_query"

    .line 170
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "Activity Mode must be present in the launch intent."

    .line 171
    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Origin must be present in the launch intent."

    .line 172
    invoke-static {p3, v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/google/android/libraries/places/internal/gc;

    invoke-direct {v0, p3, p2, p4, p5}, Lcom/google/android/libraries/places/internal/gc;-><init>(Lcom/google/android/libraries/places/internal/ee;Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/lang/String;Lcom/google/android/libraries/places/internal/a;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 174
    :goto_0
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->f:Landroid/os/Handler;

    .line 175
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 176
    iget-object p2, p2, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 178
    invoke-virtual {p2}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    sget p2, Lcom/google/android/libraries/places/R$style;->PlacesAutocompleteThemeFullscreen:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 183
    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 184
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/fs;)Lcom/google/android/libraries/places/internal/eu;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/fs;ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/fs;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/places/internal/fs;Lcom/google/android/libraries/places/api/model/Place;)V
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fs;->a(Lcom/google/android/libraries/places/api/model/Place;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    .line 407
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->l()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/libraries/places/internal/fs;)V
    .locals 0

    .line 408
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Places"

    const/4 v1, 0x6

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Places"

    const-string v1, "Cannot find caller. Did you forget to use startActivityForResult?"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fj;->b()Lcom/google/android/libraries/places/internal/fe;

    move-result-object v0

    sget-object v3, Lcom/google/android/libraries/places/internal/fe;->f:Lcom/google/android/libraries/places/internal/fe;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    .line 11
    sget-object v1, Lcom/google/android/libraries/places/internal/fe;->f:Lcom/google/android/libraries/places/internal/fe;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/fe;->e:Lcom/google/android/libraries/places/api/model/Place;

    sget-object v2, Lcom/google/android/libraries/places/internal/fe;->f:Lcom/google/android/libraries/places/internal/fe;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/fe;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/fs;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 14
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result v3

    const/16 v4, 0x10

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 17
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_main_overlay:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 18
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_back_button:I

    .line 19
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/google/android/libraries/places/internal/ei;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/ei;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    .line 20
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_root:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 22
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v6, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_content:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 23
    sget-object v6, Lcom/google/android/libraries/places/internal/ej;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    new-instance v5, Lcom/google/android/libraries/places/internal/ek;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/ek;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 26
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_main_fullscreen:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 27
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_action_bar:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 28
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v6, Lcom/google/android/libraries/places/R$id;->places_autocomplete_back_button:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 29
    sget v5, Lcom/google/android/libraries/places/R$drawable;->quantum_ic_arrow_back_grey600_24:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 30
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5, v3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 31
    new-instance v5, Lcom/google/android/libraries/places/internal/el;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/el;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 33
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_edit_text:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    .line 34
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_list:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->i:Landroid/view/View;

    .line 36
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error_progress:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->j:Landroid/view/View;

    .line 37
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_error_message:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->k:Landroid/widget/TextView;

    .line 38
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_clear_button:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    .line 39
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/google/android/libraries/places/R$id;->places_autocomplete_try_again:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->m:Landroid/widget/Button;

    .line 40
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 41
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 43
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 44
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/ex;->h:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 45
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    new-instance v5, Lcom/google/android/libraries/places/internal/fy;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/fy;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    .line 46
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 47
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/ex;->g:Lcom/google/android/libraries/places/internal/fy;

    .line 48
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    new-instance v5, Lcom/google/android/libraries/places/internal/es;

    invoke-direct {v5, p0}, Lcom/google/android/libraries/places/internal/es;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    .line 49
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 50
    iput-object v5, v3, Lcom/google/android/libraries/places/internal/ex;->f:Lcom/google/android/libraries/places/widget/listener/PlaceSelectionListener;

    .line 51
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v5, v6, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    .line 53
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/libraries/places/internal/fn;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/libraries/places/internal/fn;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/libraries/places/internal/et;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/et;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 55
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/fs;->n:Z

    if-nez v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 57
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/eu;->a(Ljava/lang/CharSequence;)V

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 61
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->r:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/libraries/places/internal/em;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/em;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/libraries/places/internal/en;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/en;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->i:Landroid/view/View;

    new-instance v3, Lcom/google/android/libraries/places/internal/eo;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/eo;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->m:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/libraries/places/internal/ep;

    invoke-direct {v3, p0}, Lcom/google/android/libraries/places/internal/ep;-><init>(Lcom/google/android/libraries/places/internal/fs;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 101
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->j()V

    goto/16 :goto_2

    .line 68
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    const-string v1, "primary_color"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->b:Landroid/content/Intent;

    const-string v3, "primary_color_dark"

    .line 71
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 75
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/places/R$color;->places_text_white_alpha_87:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 77
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/places/R$color;->places_text_black_alpha_87:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 78
    invoke-static {v0, v2, v3}, Lcom/google/android/libraries/places/internal/fv;->a(III)I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/places/R$color;->places_text_white_alpha_26:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/libraries/places/R$color;->places_text_black_alpha_26:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 82
    invoke-static {v0, v3, v4}, Lcom/google/android/libraries/places/internal/fv;->a(III)I

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/fu;->a(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 86
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_7

    .line 87
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 89
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 91
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/fu;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 92
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_8

    .line 94
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/fu;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 99
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fs;->n:Z

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fj;->b()Lcom/google/android/libraries/places/internal/fe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/fs;->a(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V

    return-void

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fj;->b()Lcom/google/android/libraries/places/internal/fe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/fs;->c(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p2    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "selected_place"

    .line 356
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p2, "status"

    .line 357
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setResult(ILandroid/content/Intent;)V

    .line 359
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "session"

    .line 124
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "adapterState"

    .line 125
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/fj;->b()Lcom/google/android/libraries/places/internal/fe;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "activityState"

    .line 126
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0x64000

    if-le v0, v1, :cond_0

    const-string v1, "Places"

    const-string v2, "onSaveInstanceState: skipping saving state, it\'s too large (%d bytes, max is %dKB)."

    const/4 v3, 0x2

    .line 131
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x190

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 133
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/libraries/places/api/model/Place;)V
    .locals 2

    .line 346
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/libraries/places/internal/fs;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/fs;->q:Z

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/internal/eu;)V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/eu;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 314
    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fs;->c(Lcom/google/android/libraries/places/internal/eu;)V

    .line 317
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/libraries/places/internal/eu;->d:Z

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fs;->b(Lcom/google/android/libraries/places/internal/eu;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/places/internal/eq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/eq;-><init>(Lcom/google/android/libraries/places/internal/fs;Lcom/google/android/libraries/places/internal/eu;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->j:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->m:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 327
    :goto_0
    iput-boolean v2, p1, Lcom/google/android/libraries/places/internal/eu;->d:Z

    return-void
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/fe;)V
    .locals 1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->o:Lcom/google/android/libraries/places/internal/eu;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/fs;->b(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 389
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 390
    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V
    .locals 2

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p2, Lcom/google/android/libraries/places/internal/eu;->d:Z

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/fs;->c(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V

    .line 189
    iget p1, p1, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const-string p1, "Places"

    const/4 p2, 0x6

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Places"

    const-string p2, "Unknown AutocompleteAdapter state change."

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    .line 193
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 194
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/fe;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget p2, p2, Lcom/google/android/libraries/places/internal/fe;->d:I

    if-ltz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget p2, p2, Lcom/google/android/libraries/places/internal/fe;->d:I

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 196
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget p2, p2, Lcom/google/android/libraries/places/internal/fe;->d:I

    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/libraries/places/internal/ex;->e:Lcom/google/android/libraries/places/internal/fe;

    iget v1, v1, Lcom/google/android/libraries/places/internal/fe;->d:I

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 198
    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/places/internal/ex;->a(ILcom/google/android/libraries/places/api/model/AutocompletePrediction;)V

    :cond_2
    return-void

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->k()V

    return-void
.end method

.method public synthetic a(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 380
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 384
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 385
    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/android/libraries/places/internal/eu;)V
    .locals 2

    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fs;->c(Lcom/google/android/libraries/places/internal/eu;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->k:Landroid/widget/TextView;

    .line 332
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public b(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V
    .locals 5

    .line 203
    iget v0, p1, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Places"

    const/4 v1, 0x6

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Places"

    const-string v1, "Unknown AutocompleteAdapter state change."

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 246
    iget v1, v0, Lcom/google/android/libraries/places/internal/gc;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gc;->j:I

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/google/android/libraries/places/R$string;->places_search_error:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    .line 250
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto/16 :goto_1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fj;->b()Lcom/google/android/libraries/places/internal/fe;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fe;->a()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    iget v0, v0, Lcom/google/android/libraries/places/internal/fe;->d:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    :goto_0
    if-eqz v0, :cond_4

    .line 219
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/eu;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    sget-object v3, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    .line 221
    iput-object v3, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 222
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/eu;->a(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    iget v1, p1, Lcom/google/android/libraries/places/internal/fe;->d:I

    .line 224
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/gc;->d:Z

    .line 225
    iput v1, v0, Lcom/google/android/libraries/places/internal/gc;->g:I

    goto :goto_1

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 228
    iget v3, v0, Lcom/google/android/libraries/places/internal/gc;->h:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/libraries/places/internal/gc;->h:I

    .line 229
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fe;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->b:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lcom/google/android/libraries/places/R$string;->places_autocomplete_no_results_for_query:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 234
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->c:Lcom/google/android/libraries/places/internal/eu$a;

    .line 238
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto :goto_1

    .line 241
    :cond_2
    iput-object v1, p2, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 243
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto :goto_1

    .line 252
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 253
    iget v1, v0, Lcom/google/android/libraries/places/internal/gc;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gc;->i:I

    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/google/android/libraries/places/R$string;->places_search_error:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    .line 257
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto :goto_1

    .line 205
    :pswitch_4
    iget-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 206
    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    if-ne v0, v1, :cond_3

    .line 207
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    .line 208
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto :goto_1

    .line 210
    :cond_3
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 211
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    goto :goto_1

    .line 260
    :pswitch_5
    iput-object v1, p2, Lcom/google/android/libraries/places/internal/eu;->c:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/google/android/libraries/places/internal/eu$a;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 262
    iput-object v0, p2, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 266
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/fs;->c(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/libraries/places/internal/eu;)V
    .locals 4

    .line 337
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/eu;->a:Lcom/google/android/libraries/places/internal/eu$a;

    .line 339
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->j:Landroid/view/View;

    .line 340
    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->d:Lcom/google/android/libraries/places/internal/eu$a;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 341
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->m:Landroid/widget/Button;

    .line 343
    sget-object v1, Lcom/google/android/libraries/places/internal/eu$a;->b:Lcom/google/android/libraries/places/internal/eu$a;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 344
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public c(Lcom/google/android/libraries/places/internal/fe;Lcom/google/android/libraries/places/internal/eu;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p2, Lcom/google/android/libraries/places/internal/eu;->b:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fs;->r:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 276
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->r:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->l()V

    .line 278
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/fs;->a(Lcom/google/android/libraries/places/internal/eu;)V

    .line 279
    iget p1, p1, Lcom/google/android/libraries/places/internal/fe;->a:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 280
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Places"

    const-string v1, "Already active!"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/gc;->p:J

    return-void
.end method

.method public synthetic d(Lcom/google/android/libraries/places/internal/eu;)V
    .locals 0

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fs;->b(Lcom/google/android/libraries/places/internal/eu;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->m()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 117
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/gc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Places"

    const-string v1, "Already inactive!"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/libraries/places/internal/gc;->p:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 121
    iget v1, v0, Lcom/google/android/libraries/places/internal/gc;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/libraries/places/internal/gc;->o:I

    const-wide/16 v1, -0x1

    .line 122
    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/gc;->p:J

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 139
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fs;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fs;->q:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 141
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/gc;->f:Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->c:Lcom/google/android/libraries/places/internal/ge;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/ge;->a(Lcom/google/android/libraries/places/internal/gc;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    .line 144
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/fj;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 145
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/ex;->d:Z

    .line 146
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ex;->a()Z

    return-void
.end method

.method public i()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    const/4 v1, 0x1

    .line 283
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/gc;->n:Z

    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public j()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/google/android/libraries/places/R$id;->places_autocomplete_overlay_root:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 292
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    .line 293
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 295
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 300
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->d:Lcom/google/android/libraries/places/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/fj;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/fa;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/fa;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/fa;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/fs;->p:Z

    .line 350
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 351
    iput-boolean v0, v1, Lcom/google/android/libraries/places/internal/gc;->e:Z

    .line 352
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/libraries/places/internal/fs;->a(ILcom/google/android/libraries/places/api/model/Place;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public synthetic n()V
    .locals 1

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->k()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 365
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 366
    throw v0
.end method

.method public synthetic o()V
    .locals 2

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->a:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 370
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 371
    throw v0
.end method

.method public synthetic p()V
    .locals 2

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 373
    iget v1, v0, Lcom/google/android/libraries/places/internal/gc;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/places/internal/gc;->m:I

    .line 374
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fs;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 377
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 378
    throw v0
.end method

.method public synthetic q()V
    .locals 1

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->m()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 394
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 395
    throw v0
.end method

.method public synthetic r()Z
    .locals 1

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->m()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 399
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 400
    throw v0
.end method

.method public synthetic s()V
    .locals 1

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fs;->m()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 404
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 405
    throw v0
.end method

.class public Lcom/google/android/libraries/places/internal/ge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field public final b:Lcom/google/android/libraries/places/internal/dw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dw;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ge;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 187
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ge;->b:Lcom/google/android/libraries/places/internal/dw;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/internal/gc;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/it$b;

    .line 4
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/gc;->d:Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 7
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 9
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 10
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/it;->d:Z

    .line 14
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/gc;->e:Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 17
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 19
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 20
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/it;->e:Z

    .line 24
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/gc;->f:Z

    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 27
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 29
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 30
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/it;->f:Z

    .line 34
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->g:I

    .line 36
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 37
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 39
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 40
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->g:I

    .line 44
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->h:I

    .line 46
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 47
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 49
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 50
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->h:I

    .line 54
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->i:I

    .line 56
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 57
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 59
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 60
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->i:I

    .line 64
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->j:I

    .line 66
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 67
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 69
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 70
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->j:I

    .line 74
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 77
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 79
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 80
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->k:I

    .line 84
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->l:I

    .line 86
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 87
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 89
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 90
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->l:I

    .line 94
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->m:I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 97
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 99
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 100
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->m:I

    .line 104
    iget-boolean v1, p1, Lcom/google/android/libraries/places/internal/gc;->n:Z

    .line 106
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 107
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 109
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 110
    iput-boolean v1, v2, Lcom/google/android/libraries/places/internal/it;->n:Z

    .line 114
    iget v1, p1, Lcom/google/android/libraries/places/internal/gc;->o:I

    .line 116
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 117
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/it$b;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/it;

    .line 119
    iget v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lcom/google/android/libraries/places/internal/it;->a:I

    .line 120
    iput v1, v2, Lcom/google/android/libraries/places/internal/it;->o:I

    .line 124
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    .line 125
    sget-object v2, Lcom/google/android/libraries/places/internal/ee;->a:Lcom/google/android/libraries/places/internal/ee;

    if-ne v1, v2, :cond_0

    .line 126
    sget-object v1, Lcom/google/android/libraries/places/internal/it$c;->b:Lcom/google/android/libraries/places/internal/it$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/it$b;->a(Lcom/google/android/libraries/places/internal/it$c;)Lcom/google/android/libraries/places/internal/it$b;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    .line 129
    sget-object v2, Lcom/google/android/libraries/places/internal/ee;->b:Lcom/google/android/libraries/places/internal/ee;

    if-ne v1, v2, :cond_1

    .line 130
    sget-object v1, Lcom/google/android/libraries/places/internal/it$c;->c:Lcom/google/android/libraries/places/internal/it$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/it$b;->a(Lcom/google/android/libraries/places/internal/it$c;)Lcom/google/android/libraries/places/internal/it$b;

    goto :goto_0

    .line 131
    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/it$c;->a:Lcom/google/android/libraries/places/internal/it$c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/it$b;->a(Lcom/google/android/libraries/places/internal/it$c;)Lcom/google/android/libraries/places/internal/it$b;

    .line 133
    :goto_0
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 134
    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne v1, v2, :cond_2

    .line 135
    sget-object p1, Lcom/google/android/libraries/places/internal/it$a;->b:Lcom/google/android/libraries/places/internal/it$a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/it$b;->a(Lcom/google/android/libraries/places/internal/it$a;)Lcom/google/android/libraries/places/internal/it$b;

    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 138
    sget-object v1, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne p1, v1, :cond_3

    .line 139
    sget-object p1, Lcom/google/android/libraries/places/internal/it$a;->a:Lcom/google/android/libraries/places/internal/it$a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/it$b;->a(Lcom/google/android/libraries/places/internal/it$a;)Lcom/google/android/libraries/places/internal/it$b;

    .line 145
    :cond_3
    :goto_1
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_2

    .line 147
    :cond_4
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 148
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 149
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 150
    :goto_2
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 151
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/it;

    .line 157
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ge;->b:Lcom/google/android/libraries/places/internal/dw;

    .line 158
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    sget-object v2, Lcom/google/android/libraries/places/internal/iy$b;->d:Lcom/google/android/libraries/places/internal/iy$b;

    .line 159
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/iy$a;->a(Lcom/google/android/libraries/places/internal/iy$b;)Lcom/google/android/libraries/places/internal/iy$a;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv$a;->b()V

    .line 162
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/iy$a;->a:Lcom/google/android/libraries/places/internal/kv;

    check-cast v2, Lcom/google/android/libraries/places/internal/iy;

    if-eqz p1, :cond_7

    .line 166
    iput-object p1, v2, Lcom/google/android/libraries/places/internal/iy;->i:Lcom/google/android/libraries/places/internal/it;

    .line 167
    iget p1, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, v2, Lcom/google/android/libraries/places/internal/iy;->a:I

    .line 171
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    if-eqz p1, :cond_5

    .line 172
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    goto :goto_3

    .line 173
    :cond_5
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->e()V

    .line 174
    iput-boolean v1, v0, Lcom/google/android/libraries/places/internal/kv$a;->b:Z

    .line 175
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/kv$a;->a:Lcom/google/android/libraries/places/internal/kv;

    .line 176
    :goto_3
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    .line 177
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    check-cast p1, Lcom/google/android/libraries/places/internal/iy;

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ge;->a(Lcom/google/android/libraries/places/internal/iy;)V

    return-void

    .line 179
    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 180
    throw p1

    .line 165
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 153
    :cond_8
    new-instance p1, Lcom/google/android/libraries/places/internal/ne;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ne;-><init>()V

    .line 154
    throw p1
.end method

.method public a(Lcom/google/android/libraries/places/internal/iy;)V
    .locals 1

    .line 189
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/iy;)Lcom/google/android/libraries/places/internal/ib;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ge;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ju;->c()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    return-void
.end method

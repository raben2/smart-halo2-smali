.class public final Lcom/google/android/libraries/places/internal/gc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/gc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/ee;

.field public final b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field public final c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:J

.field public final q:Lcom/google/android/libraries/places/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/google/android/libraries/places/internal/gd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gd;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/google/android/libraries/places/internal/ee;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ee;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    .line 12
    const-class v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->d:Z

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->e:Z

    .line 15
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->f:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->g:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->h:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->i:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->j:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->l:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->m:I

    .line 23
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->n:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/gc;->o:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    .line 26
    const-class v0, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 28
    new-instance p1, Lcom/google/android/libraries/places/internal/c;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/ee;Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/lang/String;Lcom/google/android/libraries/places/internal/a;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 4
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/libraries/places/internal/gc;->g:I

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->newInstance()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    return-void
.end method

.method private static a(Landroid/os/Parcel;Z)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 51
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 52
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/gc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lcom/google/android/libraries/places/internal/gc;

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 55
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 56
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->d:Z

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/gc;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->e:Z

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/gc;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->f:Z

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/gc;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->g:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->h:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->h:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->i:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->i:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->j:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->j:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    .line 60
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->l:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->l:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->m:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->m:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->n:Z

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/gc;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->o:I

    iget v2, p1, Lcom/google/android/libraries/places/internal/gc;->o:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    iget-wide v4, p1, Lcom/google/android/libraries/places/internal/gc;->p:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/gc;->d:Z

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/gc;->e:Z

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/gc;->f:Z

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->g:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->h:I

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->i:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->j:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->l:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->m:I

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/gc;->n:Z

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/libraries/places/internal/gc;->o:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gc;->q:Lcom/google/android/libraries/places/internal/a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 78
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hj;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->a:Lcom/google/android/libraries/places/internal/ee;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->b:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->d:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;Z)V

    .line 35
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->e:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;Z)V

    .line 36
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->f:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;Z)V

    .line 37
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/gc;->n:Z

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/gc;->a(Landroid/os/Parcel;Z)V

    .line 45
    iget v0, p0, Lcom/google/android/libraries/places/internal/gc;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/gc;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gc;->c:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

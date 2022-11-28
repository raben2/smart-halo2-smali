.class public final Lcom/google/android/libraries/places/internal/ao;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lcom/google/android/libraries/places/internal/hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/hd<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    new-instance v0, Lcom/google/android/libraries/places/internal/he;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/he;-><init>()V

    const-string v1, "accounting"

    .line 172
    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ACCOUNTING:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "administrative_area_level_1"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_1:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "administrative_area_level_2"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_2:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "administrative_area_level_3"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_3:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "administrative_area_level_4"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_4:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "administrative_area_level_5"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_5:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "airport"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->AIRPORT:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "amusement_park"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->AMUSEMENT_PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "aquarium"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->AQUARIUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "art_gallery"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ART_GALLERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "atm"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ATM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bakery"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BAKERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bank"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BANK:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bar"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BAR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "beauty_salon"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BEAUTY_SALON:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bicycle_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BICYCLE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "book_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BOOK_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bowling_alley"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BOWLING_ALLEY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "bus_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->BUS_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "cafe"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAFE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "campground"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAMPGROUND:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "car_dealer"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_DEALER:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "car_rental"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_RENTAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "car_repair"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_REPAIR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "car_wash"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_WASH:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "casino"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CASINO:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "cemetery"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CEMETERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "church"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CHURCH:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "city_hall"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CITY_HALL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "clothing_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CLOTHING_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "colloquial_area"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->COLLOQUIAL_AREA:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "convenience_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->CONVENIENCE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "country"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->COUNTRY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "courthouse"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->COURTHOUSE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "dentist"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->DENTIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "department_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->DEPARTMENT_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "doctor"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->DOCTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "electrician"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ELECTRICIAN:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "electronics_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ELECTRONICS_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "embassy"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->EMBASSY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "establishment"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ESTABLISHMENT:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "finance"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FINANCE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "fire_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FIRE_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "floor"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FLOOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "florist"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FLORIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "food"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FOOD:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "funeral_home"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FUNERAL_HOME:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "furniture_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->FURNITURE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "gas_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->GAS_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "general_contractor"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->GENERAL_CONTRACTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "geocode"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->GEOCODE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "grocery_or_supermarket"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->GROCERY_OR_SUPERMARKET:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "gym"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->GYM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "hair_care"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HAIR_CARE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "hardware_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HARDWARE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "health"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HEALTH:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 228
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "hindu_temple"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HINDU_TEMPLE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "home_goods_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HOME_GOODS_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "hospital"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->HOSPITAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "insurance_agency"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->INSURANCE_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "intersection"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->INTERSECTION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "jewelry_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->JEWELRY_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "laundry"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LAUNDRY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "lawyer"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LAWYER:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "library"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LIBRARY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "liquor_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LIQUOR_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "local_government_office"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCAL_GOVERNMENT_OFFICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "locality"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCALITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "locksmith"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCKSMITH:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "lodging"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->LODGING:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "meal_delivery"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MEAL_DELIVERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "meal_takeaway"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MEAL_TAKEAWAY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "mosque"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MOSQUE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 245
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "movie_rental"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVIE_RENTAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "movie_theater"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVIE_THEATER:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "moving_company"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVING_COMPANY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "museum"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->MUSEUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "natural_feature"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->NATURAL_FEATURE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "neighborhood"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->NEIGHBORHOOD:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "night_club"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->NIGHT_CLUB:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "painter"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PAINTER:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "park"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "parking"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PARKING:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "pet_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PET_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "pharmacy"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PHARMACY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "physiotherapist"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PHYSIOTHERAPIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "place_of_worship"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PLACE_OF_WORSHIP:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "plumber"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PLUMBER:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "point_of_interest"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POINT_OF_INTEREST:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 261
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "police"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POLICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "political"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POLITICAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "post_box"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POST_BOX:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "post_office"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POST_OFFICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "postal_code"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "postal_code_prefix"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE_PREFIX:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "postal_code_suffix"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE_SUFFIX:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "postal_town"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_TOWN:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "premise"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->PREMISE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "real_estate_agency"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->REAL_ESTATE_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "restaurant"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->RESTAURANT:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "roofing_contractor"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ROOFING_CONTRACTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "room"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ROOM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "route"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ROUTE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "rv_park"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->RV_PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "school"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SCHOOL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "shoe_store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SHOE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "shopping_mall"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SHOPPING_MALL:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "spa"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SPA:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "stadium"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->STADIUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "street_address"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->STREET_ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "storage"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->STORAGE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "store"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality_level_1"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_1:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality_level_2"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_2:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality_level_3"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_3:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality_level_4"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_4:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "sublocality_level_5"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_5:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "subpremise"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBPREMISE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "subway_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBWAY_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "supermarket"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SUPERMARKET:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "synagogue"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->SYNAGOGUE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "taxi_stand"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->TAXI_STAND:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "train_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->TRAIN_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "transit_station"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->TRANSIT_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "travel_agency"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->TRAVEL_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "university"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->UNIVERSITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "veterinary_care"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->VETERINARY_CARE:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    const-string v1, "zoo"

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Type;->ZOO:Lcom/google/android/libraries/places/api/model/Place$Type;

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/he;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/he;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/he;->a()Lcom/google/android/libraries/places/internal/hd;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/ao;->a:Lcom/google/android/libraries/places/internal/hd;

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->getLng()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;)Lcom/google/android/libraries/places/api/model/AddressComponent;
    .locals 2
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;->getTypes()Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/model/AddressComponent;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;->getShortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->build()Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AddressComponent not properly defined (%s)."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ao;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "Unable to convert %s to LocalTime, must be of format \"hhmm\"."

    const/4 v1, 0x1

    .line 140
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 141
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    .line 144
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 146
    invoke-static {v2, p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;
    .locals 11
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/api/model/Place;->builder()Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    if-eqz p0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getAddressComponents()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;

    .line 10
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$AddressComponent;)Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2}, Lcom/google/android/libraries/places/api/model/AddressComponents;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object p1

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getGeometry()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;->getLocation()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;->getViewport()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v5, v1

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;->getSouthwest()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 23
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Viewport;->getNortheast()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    new-instance v5, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_5
    move-object v3, v1

    move-object v5, v3

    .line 29
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getWebsite()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v1

    .line 33
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getFormattedAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v4

    .line 34
    invoke-virtual {v4, p1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getPlaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getInternationalPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getPhotos()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;

    if-nez v6, :cond_7

    move-object v6, v1

    goto :goto_a

    .line 47
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;->getPhotoReference()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 49
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;->getHeight()Ljava/lang/Integer;

    move-result-object v7

    .line 50
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;->getWidth()Ljava/lang/Integer;

    move-result-object v8

    .line 51
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;->getPhotoReference()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v9

    .line 52
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Photo;->getHtmlAttributions()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 53
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-string v10, ", "

    .line 55
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/hj;->b(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/hj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/hj;->a()Lcom/google/android/libraries/places/internal/hj;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/libraries/places/internal/hj;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_9
    :goto_6
    const-string v6, ""

    .line 56
    :goto_7
    invoke-virtual {v9, v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v6

    const/4 v9, 0x0

    if-nez v7, :cond_a

    const/4 v7, 0x0

    goto :goto_8

    .line 57
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_8
    invoke-virtual {v6, v7}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v6

    if-nez v8, :cond_b

    goto :goto_9

    .line 58
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_9
    invoke-virtual {v6, v9}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->build()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v6

    .line 60
    :goto_a
    invoke-static {v4, v6}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const-string p0, "Photo reference not provided for a PhotoMetadata result."

    .line 48
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ao;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    throw p0

    :cond_d
    move-object v4, v1

    .line 63
    :cond_e
    invoke-virtual {p1, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getOpeningHours()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 67
    invoke-static {}, Lcom/google/android/libraries/places/api/model/OpeningHours;->builder()Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v4

    .line 68
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours;->getPeriods()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 71
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$Period;

    if-eqz v8, :cond_f

    .line 76
    invoke-static {}, Lcom/google/android/libraries/places/api/model/Period;->builder()Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v9

    .line 77
    invoke-virtual {v8}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$Period;->getOpen()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v9

    .line 78
    invoke-virtual {v8}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$Period;->getClose()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/libraries/places/internal/ao;->a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v8

    .line 79
    invoke-virtual {v8}, Lcom/google/android/libraries/places/api/model/Period$Builder;->build()Lcom/google/android/libraries/places/api/model/Period;

    move-result-object v8

    goto :goto_c

    :cond_f
    move-object v8, v1

    .line 81
    :goto_c
    invoke-static {v7, v8}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    move-object v7, v1

    .line 84
    :cond_11
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/ao;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setPeriods(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v4

    .line 85
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours;->getWeekdayText()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/ao;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setWeekdayText(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->build()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v3

    goto :goto_d

    :cond_12
    move-object v3, v1

    .line 88
    :goto_d
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getPlusCode()Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_e

    .line 92
    :cond_13
    invoke-static {}, Lcom/google/android/libraries/places/api/model/PlusCode;->builder()Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;->getCompoundCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setCompoundCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;->getGlobalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setGlobalCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->build()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v1

    .line 96
    :goto_e
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getPriceLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getRating()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;->getUserRatingsTotal()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    .line 103
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place$Builder;->build()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 4
    .param p0    # Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;->getDay()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unable to convert Pablo response to TimeOfWeek: The \"day\" field is missing."

    .line 120
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Unable to convert Pablo response to TimeOfWeek: The \"time\" field is missing."

    .line 123
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/go;->a(ZLjava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "pabloDayOfWeek can only be an integer between 0 and 6"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 132
    :pswitch_1
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 131
    :pswitch_2
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 130
    :pswitch_3
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 129
    :pswitch_4
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 128
    :pswitch_5
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 127
    :pswitch_6
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 135
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$OpeningHours$TimeOfWeek;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/ao;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    .line 136
    invoke-static {v0, p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->newInstance(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p0

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    sget-object v3, Lcom/google/android/libraries/places/internal/ao;->a:Lcom/google/android/libraries/places/internal/hd;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/hd;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    sget-object v3, Lcom/google/android/libraries/places/internal/ao;->a:Lcom/google/android/libraries/places/internal/hd;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/hd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Place$Type;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 161
    sget-object p0, Lcom/google/android/libraries/places/api/model/Place$Type;->OTHER:Lcom/google/android/libraries/places/api/model/Place$Type;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;
    .locals 4

    .line 166
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Unexpected server error: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

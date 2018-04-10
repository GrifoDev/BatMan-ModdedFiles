.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;
.super Ljava/lang/Object;
.source "UnixCrypt.java"


# static fields
.field private static final CON_SALT:[I

.field private static final COV2CHAR:[I

.field private static final SALT_CHARS:[C

.field private static final SHIFT2:[Z

.field private static final SKB:[[I

.field private static final SPTRANS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v5

    aput v4, v0, v7

    const/4 v1, 0x3

    aput v4, v0, v1

    aput v4, v0, v8

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    aput v4, v0, v6

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    const/16 v1, 0x14

    aput v4, v0, v1

    const/16 v1, 0x15

    aput v4, v0, v1

    const/16 v1, 0x16

    aput v4, v0, v1

    const/16 v1, 0x17

    aput v4, v0, v1

    const/16 v1, 0x18

    aput v4, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    aput v4, v0, v1

    const/16 v1, 0x1b

    aput v4, v0, v1

    const/16 v1, 0x1c

    aput v4, v0, v1

    const/16 v1, 0x1d

    aput v4, v0, v1

    const/16 v1, 0x1e

    aput v4, v0, v1

    const/16 v1, 0x1f

    aput v4, v0, v1

    const/16 v1, 0x20

    aput v4, v0, v1

    const/16 v1, 0x21

    aput v4, v0, v1

    const/16 v1, 0x22

    aput v4, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x24

    aput v4, v0, v1

    const/16 v1, 0x25

    aput v4, v0, v1

    const/16 v1, 0x26

    aput v4, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0x28

    aput v4, v0, v1

    const/16 v1, 0x29

    aput v4, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    aput v4, v0, v1

    const/16 v1, 0x2d

    aput v4, v0, v1

    const/16 v1, 0x2e

    aput v4, v0, v1

    const/16 v1, 0x2f

    aput v5, v0, v1

    const/16 v1, 0x30

    aput v7, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x31

    aput v1, v0, v2

    const/16 v1, 0x32

    aput v8, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x33

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x34

    aput v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x35

    aput v1, v0, v2

    const/16 v1, 0x36

    aput v6, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x37

    aput v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x38

    aput v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x39

    aput v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x3c

    aput v1, v0, v2

    const/16 v1, 0x3d

    aput v6, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x3e

    aput v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x3f

    aput v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x40

    aput v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0x41

    aput v1, v0, v2

    const/16 v1, 0xd

    const/16 v2, 0x42

    aput v1, v0, v2

    const/16 v1, 0xe

    const/16 v2, 0x43

    aput v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x44

    aput v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x45

    aput v1, v0, v2

    const/16 v1, 0x11

    const/16 v2, 0x46

    aput v1, v0, v2

    const/16 v1, 0x12

    const/16 v2, 0x47

    aput v1, v0, v2

    const/16 v1, 0x13

    const/16 v2, 0x48

    aput v1, v0, v2

    const/16 v1, 0x14

    const/16 v2, 0x49

    aput v1, v0, v2

    const/16 v1, 0x15

    const/16 v2, 0x4a

    aput v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x4b

    aput v1, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x4c

    aput v1, v0, v2

    const/16 v1, 0x18

    const/16 v2, 0x4d

    aput v1, v0, v2

    const/16 v1, 0x19

    const/16 v2, 0x4e

    aput v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x4f

    aput v1, v0, v2

    const/16 v1, 0x1b

    const/16 v2, 0x50

    aput v1, v0, v2

    const/16 v1, 0x1c

    const/16 v2, 0x51

    aput v1, v0, v2

    const/16 v1, 0x1d

    const/16 v2, 0x52

    aput v1, v0, v2

    const/16 v1, 0x1e

    const/16 v2, 0x53

    aput v1, v0, v2

    const/16 v1, 0x1f

    const/16 v2, 0x54

    aput v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x55

    aput v1, v0, v2

    const/16 v1, 0x21

    const/16 v2, 0x56

    aput v1, v0, v2

    const/16 v1, 0x22

    const/16 v2, 0x57

    aput v1, v0, v2

    const/16 v1, 0x23

    const/16 v2, 0x58

    aput v1, v0, v2

    const/16 v1, 0x24

    const/16 v2, 0x59

    aput v1, v0, v2

    const/16 v1, 0x25

    const/16 v2, 0x5a

    aput v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x5b

    aput v1, v0, v2

    const/16 v1, 0x21

    const/16 v2, 0x5c

    aput v1, v0, v2

    const/16 v1, 0x22

    const/16 v2, 0x5d

    aput v1, v0, v2

    const/16 v1, 0x23

    const/16 v2, 0x5e

    aput v1, v0, v2

    const/16 v1, 0x24

    const/16 v2, 0x5f

    aput v1, v0, v2

    const/16 v1, 0x25

    const/16 v2, 0x60

    aput v1, v0, v2

    const/16 v1, 0x26

    const/16 v2, 0x61

    aput v1, v0, v2

    const/16 v1, 0x27

    const/16 v2, 0x62

    aput v1, v0, v2

    const/16 v1, 0x28

    const/16 v2, 0x63

    aput v1, v0, v2

    const/16 v1, 0x29

    const/16 v2, 0x64

    aput v1, v0, v2

    const/16 v1, 0x2a

    const/16 v2, 0x65

    aput v1, v0, v2

    const/16 v1, 0x2b

    const/16 v2, 0x66

    aput v1, v0, v2

    const/16 v1, 0x2c

    const/16 v2, 0x67

    aput v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0x68

    aput v1, v0, v2

    const/16 v1, 0x2e

    const/16 v2, 0x69

    aput v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0x6a

    aput v1, v0, v2

    const/16 v1, 0x30

    const/16 v2, 0x6b

    aput v1, v0, v2

    const/16 v1, 0x31

    const/16 v2, 0x6c

    aput v1, v0, v2

    const/16 v1, 0x32

    const/16 v2, 0x6d

    aput v1, v0, v2

    const/16 v1, 0x33

    const/16 v2, 0x6e

    aput v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x6f

    aput v1, v0, v2

    const/16 v1, 0x35

    const/16 v2, 0x70

    aput v1, v0, v2

    const/16 v1, 0x36

    const/16 v2, 0x71

    aput v1, v0, v2

    const/16 v1, 0x37

    const/16 v2, 0x72

    aput v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x73

    aput v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x74

    aput v1, v0, v2

    const/16 v1, 0x3a

    const/16 v2, 0x75

    aput v1, v0, v2

    const/16 v1, 0x3b

    const/16 v2, 0x76

    aput v1, v0, v2

    const/16 v1, 0x3c

    const/16 v2, 0x77

    aput v1, v0, v2

    const/16 v1, 0x3d

    const/16 v2, 0x78

    aput v1, v0, v2

    const/16 v1, 0x3e

    const/16 v2, 0x79

    aput v1, v0, v2

    const/16 v1, 0x3f

    const/16 v2, 0x7a

    aput v1, v0, v2

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x7c

    aput v4, v0, v1

    const/16 v1, 0x7d

    aput v4, v0, v1

    const/16 v1, 0x7e

    aput v4, v0, v1

    const/16 v1, 0x7f

    aput v4, v0, v1

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->CON_SALT:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    const/16 v1, 0x2e

    aput v1, v0, v4

    const/16 v1, 0x2f

    aput v1, v0, v5

    const/16 v1, 0x30

    aput v1, v0, v7

    const/16 v1, 0x31

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x32

    aput v1, v0, v8

    const/16 v1, 0x33

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x34

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x35

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x36

    aput v1, v0, v6

    const/16 v1, 0x37

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x41

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x42

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x43

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x44

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x45

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x47

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x48

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x49

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0x4a

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x4b

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x4e

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x50

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x52

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x53

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0x54

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x57

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x59

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0x61

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput v1, v0, v2

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput v1, v0, v2

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput v1, v0, v2

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput v1, v0, v2

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput v1, v0, v2

    const/16 v1, 0x6e

    const/16 v2, 0x33

    aput v1, v0, v2

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput v1, v0, v2

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput v1, v0, v2

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput v1, v0, v2

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput v1, v0, v2

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput v1, v0, v2

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput v1, v0, v2

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->COV2CHAR:[I

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789./"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SALT_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Z

    aput-boolean v4, v0, v4

    aput-boolean v4, v0, v5

    aput-boolean v5, v0, v7

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    aput-boolean v5, v0, v8

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    aput-boolean v4, v0, v6

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SHIFT2:[Z

    new-array v0, v6, [[I

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/16 v2, 0x10

    aput v2, v1, v5

    const/high16 v2, 0x20000000

    aput v2, v1, v7

    const v2, 0x20000010

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x10000

    aput v2, v1, v8

    const v2, 0x10010

    const/4 v3, 0x5

    aput v2, v1, v3

    const/high16 v2, 0x20010000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x20010010

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x800

    aput v2, v1, v6

    const/16 v2, 0x810

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x20000800

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x20000810

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x10800

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x10810

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x20010800

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x20010810

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x30

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x20000020

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x20000030

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x10020

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x10030

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x20010020

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x20010030

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x820

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x830

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x20000820

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x20000830

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x10820

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x10830

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x20010820

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x20010830

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x80000

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x80010

    const/16 v3, 0x21

    aput v2, v1, v3

    const/high16 v2, 0x20080000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x20080010

    const/16 v3, 0x23

    aput v2, v1, v3

    const/high16 v2, 0x90000

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x90010

    const/16 v3, 0x25

    aput v2, v1, v3

    const/high16 v2, 0x20090000

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x20090010

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x80800

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x80810

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x20080800

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x20080810

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x90800

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x90810

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x20090800

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x20090810

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x80020

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x80030

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x20080020

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x20080030

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x90020

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x90030

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x20090020

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x20090030

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x80820

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x80830

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x20080820

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x20080830

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x90820

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x90830

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x20090820

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x20090830

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/high16 v2, 0x2000000

    aput v2, v1, v5

    const/16 v2, 0x2000

    aput v2, v1, v7

    const v2, 0x2002000

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x200000

    aput v2, v1, v8

    const/high16 v2, 0x2200000

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x202000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x2202000

    const/4 v3, 0x7

    aput v2, v1, v3

    aput v8, v1, v6

    const v2, 0x2000004

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x2004

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x2002004

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x200004

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x2200004

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x202004

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x2202004

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x400

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x2000400

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x2400

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x2002400

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x200400

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x2200400

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x202400

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x2202400

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x404

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x2000404

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0x2404

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x2002404

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x200404

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x2200404

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x202404

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x2202404

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x10000000

    const/16 v3, 0x20

    aput v2, v1, v3

    const/high16 v2, 0x12000000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x10002000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x12002000

    const/16 v3, 0x23

    aput v2, v1, v3

    const/high16 v2, 0x10200000

    const/16 v3, 0x24

    aput v2, v1, v3

    const/high16 v2, 0x12200000

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x10202000

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x12202000

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x10000004

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x12000004

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x10002004

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x12002004

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x10200004

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x12200004

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x10202004

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x12202004

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x10000400

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x12000400

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x10002400

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x12002400

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x10200400

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x12200400

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x10202400

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x12202400

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x10000404

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x12000404

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x10002404

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x12002404

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x10200404

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x12200404

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x10202404

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x12202404

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v5

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    aput v5, v1, v5

    const/high16 v2, 0x40000

    aput v2, v1, v7

    const v2, 0x40001

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x1000000

    aput v2, v1, v8

    const v2, 0x1000001

    const/4 v3, 0x5

    aput v2, v1, v3

    const/high16 v2, 0x1040000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x1040001

    const/4 v3, 0x7

    aput v2, v1, v3

    aput v7, v1, v6

    const/4 v2, 0x3

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x40002

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x40003

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x1000002

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x1000003

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x1040002

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x1040003

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x201

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x40200

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x40201

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x1000200

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x1000201

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x1040200

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x1040201

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x202

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x203

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x40202

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x40203

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x1000202

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x1000203

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x1040202

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x1040203

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x8000000

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x8000001

    const/16 v3, 0x21

    aput v2, v1, v3

    const/high16 v2, 0x8040000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x8040001

    const/16 v3, 0x23

    aput v2, v1, v3

    const/high16 v2, 0x9000000

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x9000001

    const/16 v3, 0x25

    aput v2, v1, v3

    const/high16 v2, 0x9040000

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x9040001

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x8000002

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x8000003

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x8040002

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x8040003

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x9000002

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x9000003

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x9040002

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x9040003

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x8000200

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x8000201

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x8040200

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x8040201

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x9000200

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x9000201

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x9040200

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x9040201

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x8000202

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x8000203

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x8040202

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x8040203

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x9000202

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x9000203

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x9040202

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x9040203

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v7

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/high16 v2, 0x100000

    aput v2, v1, v5

    const/16 v2, 0x100

    aput v2, v1, v7

    const v2, 0x100100

    const/4 v3, 0x3

    aput v2, v1, v3

    aput v6, v1, v8

    const v2, 0x100008

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x108

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x100108

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x1000

    aput v2, v1, v6

    const v2, 0x101000

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x1100

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x101100

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x1008

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x101008

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0x1108

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x101108

    const/16 v3, 0xf

    aput v2, v1, v3

    const/high16 v2, 0x4000000

    const/16 v3, 0x10

    aput v2, v1, v3

    const/high16 v2, 0x4100000

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x4000100

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x4100100

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x4000008

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x4100008

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x4000108

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x4100108

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x4001000

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x4101000

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x4001100

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x4101100

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x4001008

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x4101008

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x4001108

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x4101108

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x20000

    const/16 v3, 0x20

    aput v2, v1, v3

    const/high16 v2, 0x120000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x20100

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x120100

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x20008

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x120008

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x20108

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x120108

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x21000

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x121000

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x21100

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x121100

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x21008

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x121008

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x21108

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x121108

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/high16 v2, 0x4020000

    const/16 v3, 0x30

    aput v2, v1, v3

    const/high16 v2, 0x4120000

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x4020100

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x4120100

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x4020008

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x4120008

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x4020108

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x4120108

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x4021000

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x4121000

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x4021100

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x4121100

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x4021008

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x4121008

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x4021108

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x4121108

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/high16 v2, 0x10000000

    aput v2, v1, v5

    const/high16 v2, 0x10000

    aput v2, v1, v7

    const/high16 v2, 0x10010000

    const/4 v3, 0x3

    aput v2, v1, v3

    aput v8, v1, v8

    const v2, 0x10000004

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x10004

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x10010004

    const/4 v3, 0x7

    aput v2, v1, v3

    const/high16 v2, 0x20000000

    aput v2, v1, v6

    const/high16 v2, 0x30000000

    const/16 v3, 0x9

    aput v2, v1, v3

    const/high16 v2, 0x20010000

    const/16 v3, 0xa

    aput v2, v1, v3

    const/high16 v2, 0x30010000

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x20000004

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x30000004

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x20010004

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x30010004

    const/16 v3, 0xf

    aput v2, v1, v3

    const/high16 v2, 0x100000

    const/16 v3, 0x10

    aput v2, v1, v3

    const/high16 v2, 0x10100000

    const/16 v3, 0x11

    aput v2, v1, v3

    const/high16 v2, 0x110000

    const/16 v3, 0x12

    aput v2, v1, v3

    const/high16 v2, 0x10110000

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x100004

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x10100004

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x110004

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x10110004

    const/16 v3, 0x17

    aput v2, v1, v3

    const/high16 v2, 0x20100000

    const/16 v3, 0x18

    aput v2, v1, v3

    const/high16 v2, 0x30100000

    const/16 v3, 0x19

    aput v2, v1, v3

    const/high16 v2, 0x20110000

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/high16 v2, 0x30110000

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x20100004

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x30100004

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x20110004

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x30110004

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x1000

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x10001000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x11000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x10011000

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x1004

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x10001004

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x11004

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x10011004

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x20001000

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x30001000

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x20011000

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x30011000

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x20001004

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x30001004

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x20011004

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x30011004

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x101000

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x10101000

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x111000

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x10111000

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x101004

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x10101004

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x111004

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x10111004

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x20101000

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x30101000

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x20111000

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x30111000

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x20101004

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x30101004

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x20111004

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x30111004

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v8

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/high16 v2, 0x8000000

    aput v2, v1, v5

    aput v6, v1, v7

    const v2, 0x8000008

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x400

    aput v2, v1, v8

    const v2, 0x8000400

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x408

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x8000408

    const/4 v3, 0x7

    aput v2, v1, v3

    const/high16 v2, 0x20000

    aput v2, v1, v6

    const/high16 v2, 0x8020000

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x20008

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x8020008

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x20400

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x8020400

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x20408

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x8020408

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x10

    aput v5, v1, v2

    const v2, 0x8000001

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x9

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x8000009

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x401

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x8000401

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x409

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x8000409

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x20001

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x8020001

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x20009

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x8020009

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x20401

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x8020401

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x20409

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x8020409

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x2000000

    const/16 v3, 0x20

    aput v2, v1, v3

    const/high16 v2, 0xa000000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x2000008

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0xa000008

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x2000400

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0xa000400

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x2000408

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0xa000408

    const/16 v3, 0x27

    aput v2, v1, v3

    const/high16 v2, 0x2020000

    const/16 v3, 0x28

    aput v2, v1, v3

    const/high16 v2, 0xa020000

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x2020008

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0xa020008

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x2020400

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0xa020400

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x2020408

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0xa020408

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x2000001

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0xa000001

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x2000009

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0xa000009

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x2000401

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0xa000401

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x2000409

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0xa000409

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x2020001

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0xa020001

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x2020009

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0xa020009

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x2020401

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0xa020401

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x2020409

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0xa020409

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/16 v2, 0x100

    aput v2, v1, v5

    const/high16 v2, 0x80000

    aput v2, v1, v7

    const v2, 0x80100

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x1000000

    aput v2, v1, v8

    const v2, 0x1000100

    const/4 v3, 0x5

    aput v2, v1, v3

    const/high16 v2, 0x1080000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x1080100

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x10

    aput v2, v1, v6

    const/16 v2, 0x110

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x80010

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x80110

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x1000010

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x1000110

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x1080010

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x1080110

    const/16 v3, 0xf

    aput v2, v1, v3

    const/high16 v2, 0x200000

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x200100

    const/16 v3, 0x11

    aput v2, v1, v3

    const/high16 v2, 0x280000

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x280100

    const/16 v3, 0x13

    aput v2, v1, v3

    const/high16 v2, 0x1200000

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x1200100

    const/16 v3, 0x15

    aput v2, v1, v3

    const/high16 v2, 0x1280000

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x1280100

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x200010

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x200110

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x280010

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x280110

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x1200010

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x1200110

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x1280010

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x1280110

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x300

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x80200

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x80300

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x1000200

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x1000300

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x1080200

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x1080300

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x210

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x310

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x80210

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x80310

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x1000210

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x1000310

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x1080210

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x1080310

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x200200

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x200300

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x280200

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x280300

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x1200200

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x1200300

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x1280200

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x1280300

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x200210

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x200310

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x280210

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x280310

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x1200210

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x1200310

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x1280210

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x1280310

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    aput v4, v1, v4

    const/high16 v2, 0x4000000

    aput v2, v1, v5

    const/high16 v2, 0x40000

    aput v2, v1, v7

    const/high16 v2, 0x4040000

    const/4 v3, 0x3

    aput v2, v1, v3

    aput v7, v1, v8

    const v2, 0x4000002

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x40002

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x4040002

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x2000

    aput v2, v1, v6

    const v2, 0x4002000

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x42000

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x4042000

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x2002

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x4002002

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x42002

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x4042002

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x4000020

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x40020

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x4040020

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x22

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x4000022

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x40022

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x4040022

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x2020

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x4002020

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x42020

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x4042020

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x2022

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x4002022

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x42022

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x4042022

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x800

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x4000800    # 1.5050001E-36f

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x40800

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x4040800

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x802

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x4000802    # 1.5050005E-36f

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x40802

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x4040802

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x2800

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x4002800

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x42800

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x4042800

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x2802

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x4002802

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x42802

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x4042802

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0x820

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x4000820

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x40820

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x4040820

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x822

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x4000822

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x40822

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x4040822

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x2820

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x4002820

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x42820

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x4042820

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x2822

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x4002822

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x42822

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x4042822

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    new-array v0, v6, [[I

    const/16 v1, 0x40

    new-array v1, v1, [I

    const v2, 0x820200

    aput v2, v1, v4

    const/high16 v2, 0x20000

    aput v2, v1, v5

    const/high16 v2, -0x7f800000

    aput v2, v1, v7

    const v2, -0x7f7dfe00

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x800000

    aput v2, v1, v8

    const v2, -0x7ffdfe00

    const/4 v3, 0x5

    aput v2, v1, v3

    const/high16 v2, -0x7ffe0000

    const/4 v3, 0x6

    aput v2, v1, v3

    const/high16 v2, -0x7f800000

    const/4 v3, 0x7

    aput v2, v1, v3

    const v2, -0x7ffdfe00

    aput v2, v1, v6

    const v2, 0x820200

    const/16 v3, 0x9

    aput v2, v1, v3

    const/high16 v2, 0x820000

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, -0x7ffffe00

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, -0x7f7ffe00

    const/16 v3, 0xc

    aput v2, v1, v3

    const/high16 v2, 0x800000

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0xe

    aput v4, v1, v2

    const/high16 v2, -0x7ffe0000

    const/16 v3, 0xf

    aput v2, v1, v3

    const/high16 v2, 0x20000

    const/16 v3, 0x10

    aput v2, v1, v3

    const/high16 v2, -0x80000000

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x800200

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x20200

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, -0x7f7dfe00

    const/16 v3, 0x14

    aput v2, v1, v3

    const/high16 v2, 0x820000

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, -0x7ffffe00

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x800200

    const/16 v3, 0x17

    aput v2, v1, v3

    const/high16 v2, -0x80000000

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x20200

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/high16 v2, -0x7f7e0000

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, -0x7f7ffe00

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/high16 v2, -0x7f7e0000

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x1f

    aput v4, v1, v2

    const/16 v2, 0x20

    aput v4, v1, v2

    const v2, -0x7f7dfe00

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x800200

    const/16 v3, 0x22

    aput v2, v1, v3

    const/high16 v2, -0x7ffe0000

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x820200

    const/16 v3, 0x24

    aput v2, v1, v3

    const/high16 v2, 0x20000

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, -0x7ffffe00

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x800200

    const/16 v3, 0x27

    aput v2, v1, v3

    const/high16 v2, -0x7f7e0000

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x20200

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/high16 v2, -0x7f800000

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, -0x7ffdfe00

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/high16 v2, -0x80000000

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/high16 v2, -0x7f800000

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/high16 v2, 0x820000

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, -0x7f7dfe00

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x20200

    const/16 v3, 0x31

    aput v2, v1, v3

    const/high16 v2, 0x820000

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, -0x7f7ffe00

    const/16 v3, 0x33

    aput v2, v1, v3

    const/high16 v2, 0x800000

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, -0x7ffffe00

    const/16 v3, 0x35

    aput v2, v1, v3

    const/high16 v2, -0x7ffe0000

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x37

    aput v4, v1, v2

    const/high16 v2, 0x20000

    const/16 v3, 0x38

    aput v2, v1, v3

    const/high16 v2, 0x800000

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, -0x7f7ffe00

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x820200

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/high16 v2, -0x80000000

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/high16 v2, -0x7f7e0000

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, -0x7ffdfe00

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x40

    new-array v1, v1, [I

    const v2, 0x10042004

    aput v2, v1, v4

    aput v4, v1, v5

    const v2, 0x42000

    aput v2, v1, v7

    const/high16 v2, 0x10040000

    const/4 v3, 0x3

    aput v2, v1, v3

    const v2, 0x10000004

    aput v2, v1, v8

    const/16 v2, 0x2004

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x10002000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x42000

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x2000

    aput v2, v1, v6

    const v2, 0x10040004

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0xa

    aput v8, v1, v2

    const v2, 0x10002000

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x40004

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x10042000

    const/16 v3, 0xd

    aput v2, v1, v3

    const/high16 v2, 0x10040000

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0xf

    aput v8, v1, v2

    const/high16 v2, 0x40000

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x10002004

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x10040004

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x2000

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x42004

    const/16 v3, 0x14

    aput v2, v1, v3

    const/high16 v2, 0x10000000

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x16

    aput v4, v1, v2

    const v2, 0x40004

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x10002004

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x42004

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x10042000

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x10000004

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/high16 v2, 0x10000000

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/high16 v2, 0x40000

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x2004

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x10042004

    const/16 v3, 0x1f

    aput v2, v1, v3

    const v2, 0x40004

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x10042000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x10002000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x42004

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x10042004

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x40004

    const/16 v3, 0x25

    aput v2, v1, v3

    const v2, 0x10000004

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v2, 0x27

    aput v4, v1, v2

    const/high16 v2, 0x10000000

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x2004

    const/16 v3, 0x29

    aput v2, v1, v3

    const/high16 v2, 0x40000

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x10040004

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x2000

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/high16 v2, 0x10000000

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x42004

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x10002004

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x10042000

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0x2000

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x32

    aput v4, v1, v2

    const v2, 0x10000004

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x34

    aput v8, v1, v2

    const v2, 0x10042004

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x42000

    const/16 v3, 0x36

    aput v2, v1, v3

    const/high16 v2, 0x10040000

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x10040004

    const/16 v3, 0x38

    aput v2, v1, v3

    const/high16 v2, 0x40000

    const/16 v3, 0x39

    aput v2, v1, v3

    const/16 v2, 0x2004

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x10002000

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x10002004

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x3d

    aput v8, v1, v2

    const/high16 v2, 0x10040000

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x42000

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v5

    const/16 v1, 0x40

    new-array v1, v1, [I

    const/high16 v2, 0x41000000    # 8.0f

    aput v2, v1, v4

    const v2, 0x1010040

    aput v2, v1, v5

    const/16 v2, 0x40

    aput v2, v1, v7

    const v2, 0x41000040    # 8.000061f

    const/4 v3, 0x3

    aput v2, v1, v3

    const/high16 v2, 0x40010000    # 2.015625f

    aput v2, v1, v8

    const/high16 v2, 0x1000000

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x41000040    # 8.000061f

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x10040

    const/4 v3, 0x7

    aput v2, v1, v3

    const v2, 0x1000040

    aput v2, v1, v6

    const/high16 v2, 0x10000

    const/16 v3, 0x9

    aput v2, v1, v3

    const/high16 v2, 0x1010000

    const/16 v3, 0xa

    aput v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x41010040

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x40000040    # 2.0000153f

    const/16 v3, 0xd

    aput v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0xe

    aput v2, v1, v3

    const/high16 v2, 0x41010000    # 8.0625f

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x10

    aput v4, v1, v2

    const/high16 v2, 0x40010000    # 2.015625f

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x1010040

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x40

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x40000040    # 2.0000153f

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x41010040

    const/16 v3, 0x15

    aput v2, v1, v3

    const/high16 v2, 0x10000

    const/16 v3, 0x16

    aput v2, v1, v3

    const/high16 v2, 0x41000000    # 8.0f

    const/16 v3, 0x17

    aput v2, v1, v3

    const/high16 v2, 0x41010000    # 8.0625f

    const/16 v3, 0x18

    aput v2, v1, v3

    const v2, 0x1000040

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x40010040

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/high16 v2, 0x1010000

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x10040

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x1d

    aput v4, v1, v2

    const/high16 v2, 0x1000000

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x40010040

    const/16 v3, 0x1f

    aput v2, v1, v3

    const v2, 0x1010040

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x40

    const/16 v3, 0x21

    aput v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x22

    aput v2, v1, v3

    const/high16 v2, 0x10000

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x40000040    # 2.0000153f

    const/16 v3, 0x24

    aput v2, v1, v3

    const/high16 v2, 0x40010000    # 2.015625f

    const/16 v3, 0x25

    aput v2, v1, v3

    const/high16 v2, 0x1010000

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x41000040    # 8.000061f

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x28

    aput v4, v1, v2

    const v2, 0x1010040

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x10040

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/high16 v2, 0x41010000    # 8.0625f

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/high16 v2, 0x40010000    # 2.015625f

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/high16 v2, 0x1000000

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x41010040

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x40010040

    const/16 v3, 0x30

    aput v2, v1, v3

    const/high16 v2, 0x41000000    # 8.0f

    const/16 v3, 0x31

    aput v2, v1, v3

    const/high16 v2, 0x1000000

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x41010040

    const/16 v3, 0x33

    aput v2, v1, v3

    const/high16 v2, 0x10000

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x1000040

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x41000040    # 8.000061f

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x10040

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x1000040

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0x39

    aput v4, v1, v2

    const/high16 v2, 0x41010000    # 8.0625f

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x40000040    # 2.0000153f

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/high16 v2, 0x41000000    # 8.0f

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x40010040

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x40

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/high16 v2, 0x1010000

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v7

    const/16 v1, 0x40

    new-array v1, v1, [I

    const v2, 0x100402

    aput v2, v1, v4

    const v2, 0x4000400

    aput v2, v1, v5

    aput v7, v1, v7

    const v2, 0x4100402

    const/4 v3, 0x3

    aput v2, v1, v3

    aput v4, v1, v8

    const/high16 v2, 0x4100000

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x4000402

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x100002

    const/4 v3, 0x7

    aput v2, v1, v3

    const v2, 0x4100400

    aput v2, v1, v6

    const v2, 0x4000002

    const/16 v3, 0x9

    aput v2, v1, v3

    const/high16 v2, 0x4000000

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x402

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x4000002

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x100402

    const/16 v3, 0xd

    aput v2, v1, v3

    const/high16 v2, 0x100000

    const/16 v3, 0xe

    aput v2, v1, v3

    const/high16 v2, 0x4000000

    const/16 v3, 0xf

    aput v2, v1, v3

    const v2, 0x4100002

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x100400

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x400

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x13

    aput v7, v1, v2

    const v2, 0x100400

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x4000402

    const/16 v3, 0x15

    aput v2, v1, v3

    const/high16 v2, 0x4100000

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x400

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x402

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x19

    aput v4, v1, v2

    const v2, 0x100002

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x4100400

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x4000400

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x4100002

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x4100402

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/high16 v2, 0x100000

    const/16 v3, 0x1f

    aput v2, v1, v3

    const v2, 0x4100002

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x402

    const/16 v3, 0x21

    aput v2, v1, v3

    const/high16 v2, 0x100000

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x4000002

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x100400

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x4000400

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0x26

    aput v7, v1, v2

    const/high16 v2, 0x4100000

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x4000402

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x29

    aput v4, v1, v2

    const/16 v2, 0x400

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x100002

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x2c

    aput v4, v1, v2

    const v2, 0x4100002

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x4100400

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x400

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x4100402

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x100402

    const/16 v3, 0x32

    aput v2, v1, v3

    const/high16 v2, 0x100000

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x4100402

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x35

    aput v7, v1, v2

    const v2, 0x4000400

    const/16 v3, 0x36

    aput v2, v1, v3

    const v2, 0x100402

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x100002

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x100400

    const/16 v3, 0x39

    aput v2, v1, v3

    const/high16 v2, 0x4100000

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x4000402

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x402

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/high16 v2, 0x4000000

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x4000002

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x4100400

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    const/high16 v2, 0x2000000

    aput v2, v1, v4

    const/16 v2, 0x4000

    aput v2, v1, v5

    const/16 v2, 0x100

    aput v2, v1, v7

    const v2, 0x2004108

    const/4 v3, 0x3

    aput v2, v1, v3

    const v2, 0x2004008

    aput v2, v1, v8

    const v2, 0x2000100

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x4108

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x2004000

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x4000

    aput v2, v1, v6

    const/16 v2, 0x9

    aput v6, v1, v2

    const v2, 0x2000008

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x4100

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x2000108

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x2004008

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x2004100

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0xf

    aput v4, v1, v2

    const/16 v2, 0x4100

    const/16 v3, 0x10

    aput v2, v1, v3

    const/high16 v2, 0x2000000

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x4008

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x108

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x2000100

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0x4108

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x16

    aput v4, v1, v2

    const v2, 0x2000008

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x18

    aput v6, v1, v2

    const v2, 0x2000108

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x2004108

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x4008

    const/16 v3, 0x1b

    aput v2, v1, v3

    const v2, 0x2004000

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x100

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x108

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x2004100

    const/16 v3, 0x1f

    aput v2, v1, v3

    const v2, 0x2004100

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x2000108

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x4008

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x2004000

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x4000

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x25

    aput v6, v1, v2

    const v2, 0x2000008

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x2000100

    const/16 v3, 0x27

    aput v2, v1, v3

    const/high16 v2, 0x2000000

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x4100

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x2004108

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x2b

    aput v4, v1, v2

    const/16 v2, 0x4108

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/high16 v2, 0x2000000

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x100

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x4008

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x2000108

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0x100

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x32

    aput v4, v1, v2

    const v2, 0x2004108

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x2004008

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x2004100

    const/16 v3, 0x35

    aput v2, v1, v3

    const/16 v2, 0x108

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x4000

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x4100

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x2004008

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x2000100

    const/16 v3, 0x3a

    aput v2, v1, v3

    const/16 v2, 0x108

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x3c

    aput v6, v1, v2

    const/16 v2, 0x4108

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x2004000

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x2000008

    const/16 v3, 0x3f

    aput v2, v1, v3

    aput-object v1, v0, v8

    const/16 v1, 0x40

    new-array v1, v1, [I

    const v2, 0x20000010

    aput v2, v1, v4

    const v2, 0x80010

    aput v2, v1, v5

    aput v4, v1, v7

    const v2, 0x20080800

    const/4 v3, 0x3

    aput v2, v1, v3

    const v2, 0x80010

    aput v2, v1, v8

    const/16 v2, 0x800

    const/4 v3, 0x5

    aput v2, v1, v3

    const v2, 0x20000810

    const/4 v3, 0x6

    aput v2, v1, v3

    const/high16 v2, 0x80000

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x810

    aput v2, v1, v6

    const v2, 0x20080810

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x80800

    const/16 v3, 0xa

    aput v2, v1, v3

    const/high16 v2, 0x20000000

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x20000800

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x20000010

    const/16 v3, 0xd

    aput v2, v1, v3

    const/high16 v2, 0x20080000

    const/16 v3, 0xe

    aput v2, v1, v3

    const v2, 0x80810

    const/16 v3, 0xf

    aput v2, v1, v3

    const/high16 v2, 0x80000

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x20000810

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x20080010

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x13

    aput v4, v1, v2

    const/16 v2, 0x800

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0x10

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x20080800

    const/16 v3, 0x16

    aput v2, v1, v3

    const v2, 0x20080010

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x20080810

    const/16 v3, 0x18

    aput v2, v1, v3

    const/high16 v2, 0x20080000

    const/16 v3, 0x19

    aput v2, v1, v3

    const/high16 v2, 0x20000000

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x810

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x10

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x80800

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x80810

    const/16 v3, 0x1e

    aput v2, v1, v3

    const v2, 0x20000800

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x810

    const/16 v3, 0x20

    aput v2, v1, v3

    const/high16 v2, 0x20000000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x20000800

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x80810

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x20080800

    const/16 v3, 0x24

    aput v2, v1, v3

    const v2, 0x80010

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0x26

    aput v4, v1, v2

    const v2, 0x20000800

    const/16 v3, 0x27

    aput v2, v1, v3

    const/high16 v2, 0x20000000

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x800

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x20080010

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/high16 v2, 0x80000

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x80010

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x20080810

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x80800

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x10

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x20080810

    const/16 v3, 0x30

    aput v2, v1, v3

    const v2, 0x80800

    const/16 v3, 0x31

    aput v2, v1, v3

    const/high16 v2, 0x80000

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x20000810

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x20000010

    const/16 v3, 0x34

    aput v2, v1, v3

    const/high16 v2, 0x20080000

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x80810

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x37

    aput v4, v1, v2

    const/16 v2, 0x800

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x20000010

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x20000810

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x20080800

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/high16 v2, 0x20080000

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x810

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x10

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x20080010

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    const/16 v2, 0x1000

    aput v2, v1, v4

    const/16 v2, 0x80

    aput v2, v1, v5

    const v2, 0x400080

    aput v2, v1, v7

    const v2, 0x400001

    const/4 v3, 0x3

    aput v2, v1, v3

    const v2, 0x401081

    aput v2, v1, v8

    const/16 v2, 0x1001

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x1080

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v2, 0x7

    aput v4, v1, v2

    const/high16 v2, 0x400000

    aput v2, v1, v6

    const v2, 0x400081

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x81

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x401000

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0xc

    aput v5, v1, v2

    const v2, 0x401080

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x401000

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x81

    const/16 v3, 0xf

    aput v2, v1, v3

    const v2, 0x400081

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x1000

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x1001

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x401081

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x14

    aput v4, v1, v2

    const v2, 0x400080

    const/16 v3, 0x15

    aput v2, v1, v3

    const v2, 0x400001

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x1080

    const/16 v3, 0x17

    aput v2, v1, v3

    const v2, 0x401001

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x1081

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x401080

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x1b

    aput v5, v1, v2

    const/16 v2, 0x1081

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x401001

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x80

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/high16 v2, 0x400000

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x1081

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x401000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x401001

    const/16 v3, 0x22

    aput v2, v1, v3

    const/16 v2, 0x81

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x1000

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x80

    const/16 v3, 0x25

    aput v2, v1, v3

    const/high16 v2, 0x400000

    const/16 v3, 0x26

    aput v2, v1, v3

    const v2, 0x401001

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x400081

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x1081

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v2, 0x1080

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x2b

    aput v4, v1, v2

    const/16 v2, 0x80

    const/16 v3, 0x2c

    aput v2, v1, v3

    const v2, 0x400001

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x2e

    aput v5, v1, v2

    const v2, 0x400080

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0x30

    aput v4, v1, v2

    const v2, 0x400081

    const/16 v3, 0x31

    aput v2, v1, v3

    const v2, 0x400080

    const/16 v3, 0x32

    aput v2, v1, v3

    const/16 v2, 0x1080

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x81

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x1000

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x401081

    const/16 v3, 0x36

    aput v2, v1, v3

    const/high16 v2, 0x400000

    const/16 v3, 0x37

    aput v2, v1, v3

    const v2, 0x401080

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0x39

    aput v5, v1, v2

    const/16 v2, 0x1001

    const/16 v3, 0x3a

    aput v2, v1, v3

    const v2, 0x401081

    const/16 v3, 0x3b

    aput v2, v1, v3

    const v2, 0x400001

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x401080

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x401000

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/16 v2, 0x1001

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x40

    new-array v1, v1, [I

    const v2, 0x8200020

    aput v2, v1, v4

    const v2, 0x8208000

    aput v2, v1, v5

    const v2, 0x8020

    aput v2, v1, v7

    const/4 v2, 0x3

    aput v4, v1, v2

    const v2, 0x8008000

    aput v2, v1, v8

    const v2, 0x200020

    const/4 v3, 0x5

    aput v2, v1, v3

    const/high16 v2, 0x8200000

    const/4 v3, 0x6

    aput v2, v1, v3

    const v2, 0x8208020

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x20

    aput v2, v1, v6

    const/high16 v2, 0x8000000

    const/16 v3, 0x9

    aput v2, v1, v3

    const v2, 0x208000

    const/16 v3, 0xa

    aput v2, v1, v3

    const v2, 0x8020

    const/16 v3, 0xb

    aput v2, v1, v3

    const v2, 0x208020

    const/16 v3, 0xc

    aput v2, v1, v3

    const v2, 0x8008020

    const/16 v3, 0xd

    aput v2, v1, v3

    const v2, 0x8000020

    const/16 v3, 0xe

    aput v2, v1, v3

    const/high16 v2, 0x8200000

    const/16 v3, 0xf

    aput v2, v1, v3

    const v2, 0x8000

    const/16 v3, 0x10

    aput v2, v1, v3

    const v2, 0x208020

    const/16 v3, 0x11

    aput v2, v1, v3

    const v2, 0x200020

    const/16 v3, 0x12

    aput v2, v1, v3

    const v2, 0x8008000

    const/16 v3, 0x13

    aput v2, v1, v3

    const v2, 0x8208020

    const/16 v3, 0x14

    aput v2, v1, v3

    const v2, 0x8000020

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x16

    aput v4, v1, v2

    const v2, 0x208000

    const/16 v3, 0x17

    aput v2, v1, v3

    const/high16 v2, 0x8000000

    const/16 v3, 0x18

    aput v2, v1, v3

    const/high16 v2, 0x200000

    const/16 v3, 0x19

    aput v2, v1, v3

    const v2, 0x8008020

    const/16 v3, 0x1a

    aput v2, v1, v3

    const v2, 0x8200020

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/high16 v2, 0x200000

    const/16 v3, 0x1c

    aput v2, v1, v3

    const v2, 0x8000

    const/16 v3, 0x1d

    aput v2, v1, v3

    const v2, 0x8208000

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/high16 v2, 0x200000

    const/16 v3, 0x20

    aput v2, v1, v3

    const v2, 0x8000

    const/16 v3, 0x21

    aput v2, v1, v3

    const v2, 0x8000020

    const/16 v3, 0x22

    aput v2, v1, v3

    const v2, 0x8208020

    const/16 v3, 0x23

    aput v2, v1, v3

    const v2, 0x8020

    const/16 v3, 0x24

    aput v2, v1, v3

    const/high16 v2, 0x8000000

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0x26

    aput v4, v1, v2

    const v2, 0x208000

    const/16 v3, 0x27

    aput v2, v1, v3

    const v2, 0x8200020

    const/16 v3, 0x28

    aput v2, v1, v3

    const v2, 0x8008020

    const/16 v3, 0x29

    aput v2, v1, v3

    const v2, 0x8008000

    const/16 v3, 0x2a

    aput v2, v1, v3

    const v2, 0x200020

    const/16 v3, 0x2b

    aput v2, v1, v3

    const v2, 0x8208000

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0x2d

    aput v2, v1, v3

    const v2, 0x200020

    const/16 v3, 0x2e

    aput v2, v1, v3

    const v2, 0x8008000

    const/16 v3, 0x2f

    aput v2, v1, v3

    const v2, 0x8208020

    const/16 v3, 0x30

    aput v2, v1, v3

    const/high16 v2, 0x200000

    const/16 v3, 0x31

    aput v2, v1, v3

    const/high16 v2, 0x8200000

    const/16 v3, 0x32

    aput v2, v1, v3

    const v2, 0x8000020

    const/16 v3, 0x33

    aput v2, v1, v3

    const v2, 0x208000

    const/16 v3, 0x34

    aput v2, v1, v3

    const v2, 0x8020

    const/16 v3, 0x35

    aput v2, v1, v3

    const v2, 0x8008020

    const/16 v3, 0x36

    aput v2, v1, v3

    const/high16 v2, 0x8200000

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0x38

    aput v2, v1, v3

    const v2, 0x8208000

    const/16 v3, 0x39

    aput v2, v1, v3

    const v2, 0x208020

    const/16 v3, 0x3a

    aput v2, v1, v3

    const/16 v2, 0x3b

    aput v4, v1, v2

    const/high16 v2, 0x8000000

    const/16 v3, 0x3c

    aput v2, v1, v3

    const v2, 0x8200020

    const/16 v3, 0x3d

    aput v2, v1, v3

    const v2, 0x8000

    const/16 v3, 0x3e

    aput v2, v1, v3

    const v2, 0x208020

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static body([III)[I
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v3, 0x19

    if-lt v9, v3, :cond_0

    move v12, v1

    ushr-int/lit8 v3, v0, 0x1

    shl-int/lit8 v4, v0, 0x1f

    or-int v1, v3, v4

    ushr-int/lit8 v3, v12, 0x1

    shl-int/lit8 v4, v12, 0x1f

    or-int v0, v3, v4

    const/4 v3, 0x2

    new-array v11, v3, [I

    const/4 v3, 0x1

    const v4, 0x55555555

    invoke-static {v1, v0, v3, v4, v11}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v3, 0x0

    aget v1, v11, v3

    const/4 v3, 0x1

    aget v0, v11, v3

    const/16 v3, 0x8

    const v4, 0xff00ff

    invoke-static {v0, v1, v3, v4, v11}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v3, 0x0

    aget v0, v11, v3

    const/4 v3, 0x1

    aget v1, v11, v3

    const/4 v3, 0x2

    const v4, 0x33333333

    invoke-static {v1, v0, v3, v4, v11}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v3, 0x0

    aget v1, v11, v3

    const/4 v3, 0x1

    aget v0, v11, v3

    const/16 v3, 0x10

    const v4, 0xffff

    invoke-static {v0, v1, v3, v4, v11}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v3, 0x0

    aget v0, v11, v3

    const/4 v3, 0x1

    aget v1, v11, v3

    const/4 v3, 0x4

    const v4, 0xf0f0f0f

    invoke-static {v1, v0, v3, v4, v11}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v3, 0x0

    aget v1, v11, v3

    const/4 v3, 0x1

    aget v0, v11, v3

    const/4 v3, 0x2

    new-array v10, v3, [I

    const/4 v3, 0x0

    aput v0, v10, v3

    const/4 v3, 0x1

    aput v1, v10, v3

    return-object v10

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    move v12, v0

    move v0, v1

    move v1, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v3, p1

    move v4, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->dEncrypt(IIIII[I)I

    move-result v0

    add-int/lit8 v5, v2, 0x2

    move v3, v1

    move v4, v0

    move v6, p1

    move v7, p2

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->dEncrypt(IIIII[I)I

    move-result v1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1
.end method

.method private static byteToUnsigned(B)I
    .locals 0

    if-ltz p0, :cond_0

    :goto_0
    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method public static crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 22

    if-eqz p1, :cond_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "             "

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    sget-object v19, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->CON_SALT:[I

    aget v7, v19, v6

    sget-object v19, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->CON_SALT:[I

    aget v19, v19, v5

    shl-int/lit8 v8, v19, 0x4

    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v12, v0, [B

    const/4 v9, 0x0

    :goto_1
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_2

    const/4 v9, 0x0

    :goto_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_3

    :cond_0
    invoke-static {v12}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->desSetKey([B)[I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->body([III)[I

    move-result-object v14

    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v2, v0, [B

    const/16 v19, 0x0

    aget v19, v14, v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->intToFourBytes(I[BI)V

    const/16 v19, 0x1

    aget v19, v14, v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->intToFourBytes(I[BI)V

    const/16 v19, 0x0

    const/16 v20, 0x8

    aput-byte v19, v2, v20

    const/4 v9, 0x2

    const/16 v18, 0x0

    const/16 v17, 0x80

    :goto_3
    const/16 v19, 0xd

    move/from16 v0, v19

    if-lt v9, v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_1
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    sget-object v19, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SALT_CHARS:[C

    move-object/from16 v0, v19

    array-length v13, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SALT_CHARS:[C

    invoke-virtual {v15, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    aget-char v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SALT_CHARS:[C

    invoke-virtual {v15, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    aget-char v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const/16 v19, 0x0

    aput-byte v19, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    aget-byte v10, p0, v9

    shl-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_4
    const/4 v11, 0x0

    const/4 v4, 0x0

    :goto_4
    const/16 v19, 0x6

    move/from16 v0, v19

    if-lt v11, v0, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    shl-int/lit8 v4, v4, 0x1

    aget-byte v19, v2, v18

    and-int v19, v19, v17

    if-nez v19, :cond_6

    :goto_5
    ushr-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_7

    :goto_6
    sget-object v19, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->COV2CHAR:[I

    aget v19, v19, v4

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    or-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v18, v18, 0x1

    const/16 v17, 0x80

    goto :goto_6
.end method

.method private static dEncrypt(IIIII[I)I
    .locals 6

    ushr-int/lit8 v3, p1, 0x10

    xor-int v2, p1, v3

    and-int v1, v2, p3

    and-int/2addr v2, p4

    shl-int/lit8 v3, v1, 0x10

    xor-int/2addr v3, v1

    xor-int/2addr v3, p1

    aget v4, p5, p2

    xor-int v1, v3, v4

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v3, v2

    xor-int/2addr v3, p1

    add-int/lit8 v4, p2, 0x1

    aget v4, p5, v4

    xor-int v0, v3, v4

    ushr-int/lit8 v3, v0, 0x4

    shl-int/lit8 v4, v0, 0x1c

    or-int v0, v3, v4

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    and-int/lit8 v4, v0, 0x3f

    aget v3, v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x5

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x7

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x2

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x4

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x6

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    xor-int/2addr p0, v3

    return p0
.end method

.method private static desSetKey([B)[I
    .locals 13

    const/16 v9, 0x20

    new-array v7, v9, [I

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->fourBytesToInt([BI)I

    move-result v0

    const/4 v9, 0x4

    invoke-static {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->fourBytesToInt([BI)I

    move-result v1

    const/4 v9, 0x2

    new-array v5, v9, [I

    const/4 v9, 0x4

    const v10, 0xf0f0f0f

    invoke-static {v1, v0, v9, v10, v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v9, 0x0

    aget v1, v5, v9

    const/4 v9, 0x1

    aget v0, v5, v9

    const/4 v9, -0x2

    const/high16 v10, -0x33340000

    invoke-static {v0, v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->hPermOp(III)I

    move-result v0

    const/4 v9, -0x2

    const/high16 v10, -0x33340000

    invoke-static {v1, v9, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->hPermOp(III)I

    move-result v1

    const/4 v9, 0x1

    const v10, 0x55555555

    invoke-static {v1, v0, v9, v10, v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v9, 0x0

    aget v1, v5, v9

    const/4 v9, 0x1

    aget v0, v5, v9

    const/16 v9, 0x8

    const v10, 0xff00ff

    invoke-static {v0, v1, v9, v10, v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v9, 0x0

    aget v0, v5, v9

    const/4 v9, 0x1

    aget v1, v5, v9

    const/4 v9, 0x1

    const v10, 0x55555555

    invoke-static {v1, v0, v9, v10, v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->permOp(IIII[I)V

    const/4 v9, 0x0

    aget v1, v5, v9

    const/4 v9, 0x1

    aget v0, v5, v9

    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v1

    or-int/2addr v9, v10

    const/high16 v10, 0xff0000

    and-int/2addr v10, v1

    ushr-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/high16 v10, -0x10000000

    and-int/2addr v10, v0

    ushr-int/lit8 v10, v10, 0x4

    or-int v1, v9, v10

    const v9, 0xfffffff

    and-int/2addr v0, v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    const/16 v9, 0x10

    if-lt v2, v9, :cond_0

    return-object v7

    :cond_0
    sget-object v9, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SHIFT2:[Z

    aget-boolean v9, v9, v2

    if-nez v9, :cond_1

    ushr-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v0, 0x1b

    or-int v0, v9, v10

    ushr-int/lit8 v9, v1, 0x1

    shl-int/lit8 v10, v1, 0x1b

    or-int v1, v9, v10

    :goto_1
    const v9, 0xfffffff

    and-int/2addr v0, v9

    const v9, 0xfffffff

    and-int/2addr v1, v9

    sget-object v9, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    and-int/lit8 v10, v0, 0x3f

    aget v9, v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x3

    ushr-int/lit8 v12, v0, 0x7

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0xd

    and-int/lit8 v11, v11, 0xf

    ushr-int/lit8 v12, v0, 0xe

    and-int/lit8 v12, v12, 0x30

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0x14

    and-int/lit8 v11, v11, 0x1

    ushr-int/lit8 v12, v0, 0x15

    and-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v0, 0x16

    and-int/lit8 v12, v12, 0x38

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int v6, v9, v10

    sget-object v9, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    and-int/lit8 v10, v1, 0x3f

    aget v9, v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x5

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0x7

    and-int/lit8 v11, v11, 0x3

    ushr-int/lit8 v12, v1, 0x8

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x6

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0xf

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->SKB:[[I

    const/4 v11, 0x7

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0x15

    and-int/lit8 v11, v11, 0xf

    ushr-int/lit8 v12, v1, 0x16

    and-int/lit8 v12, v12, 0x30

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int v8, v9, v10

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v9, v8, 0x10

    const v10, 0xffff

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v7, v4

    ushr-int/lit8 v9, v6, 0x10

    const/high16 v10, -0x10000

    and-int/2addr v10, v8

    or-int v6, v9, v10

    shl-int/lit8 v9, v6, 0x4

    ushr-int/lit8 v10, v6, 0x1c

    or-int v6, v9, v10

    add-int/lit8 v4, v3, 0x1

    aput v6, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    ushr-int/lit8 v9, v0, 0x2

    shl-int/lit8 v10, v0, 0x1a

    or-int v0, v9, v10

    ushr-int/lit8 v9, v1, 0x2

    shl-int/lit8 v10, v1, 0x1a

    or-int v1, v9, v10

    goto/16 :goto_1
.end method

.method private static fourBytesToInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->byteToUnsigned(B)I

    move-result v1

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private static hPermOp(III)I
    .locals 3

    rsub-int/lit8 v1, p1, 0x10

    shl-int v1, p0, v1

    xor-int/2addr v1, p0

    and-int v0, v1, p2

    xor-int v1, p0, v0

    rsub-int/lit8 v2, p1, 0x10

    ushr-int v2, v0, v2

    xor-int p0, v1, v2

    return p0
.end method

.method private static intToFourBytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static permOp(IIII[I)V
    .locals 2

    ushr-int v1, p0, p2

    xor-int/2addr v1, p1

    and-int v0, v1, p3

    shl-int v1, v0, p2

    xor-int/2addr p0, v1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    aput p0, p4, v1

    const/4 v1, 0x1

    aput p1, p4, v1

    return-void
.end method
